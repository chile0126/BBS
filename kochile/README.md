
<!-- README.md is generated from README.Rmd. Please edit that file -->

# kochile

<!-- badges: start -->
<!-- badges: end -->

`kochile` is made to finish my essay.

## Installation

You can install the development version of `kochile` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("chile0126/BBS/kochile")
```

## Example

Use `get_all_data ()` to import data that going to be used, which
including `d0914`, `d1520`, `dkoh`, `site_bbs`, `site_bbs0914`,
`site_bbs1520`, `site_koh`, `den_env0914` and `den_env1520`

``` r
library (googledrive)
library (googlesheets4)
library (kochile)
get_all_data ()
head (site_koh)
#> # A tibble: 6 x 7
#>   GPS_ID X_COORDINA Y_COORDINA POINT_X POINT_Y ELEVATION   BSR
#>    <dbl>      <dbl>      <dbl>   <dbl>   <dbl>     <dbl> <dbl>
#> 1    103    316638.   2771391.    122.    25.0     96.6     11
#> 2    104    293801.   2750174.    121.    24.9    321.      19
#> 3    108    308016.   2749326     122.    24.9    185.      18
#> 4    109    302810.   2775639.    122.    25.1      3.41    10
#> 5    110    323052.   2761881.    122.    25.0    554.      22
#> 6    112    308590.   2769383.    122.    25.0     19.4     11
head (d1520) [1:6]
#> # A tibble: 6 x 6
#>    ...1 V1       `A01-01` `A01-02` `A01-03` `A01-05` 
#>   <dbl> <chr>       <dbl>    <dbl>    <dbl> <chr>    
#> 1     1 八哥      0        0         0      no survey
#> 2     2 叉尾雨燕  0        0.133     0      no survey
#> 3     3 大赤啄木  0        0         0      no survey
#> 4     4 大卷尾    0.159    0         0.232  no survey
#> 5     5 大冠鷲    0.00531  0.00796   0.0265 no survey
#> 6     6 大彎嘴    0.0152   0.171     0.0265 no survey
head (den_env0914) [1:6]
#> # A tibble: 6 x 6
#>   siteid  八哥 叉尾雨燕 大赤啄木 大卷尾 大冠鷲
#>   <chr>  <dbl>    <dbl>    <dbl>  <dbl>  <dbl>
#> 1 A01-01     0        0        0 0.0162 0     
#> 2 A01-02     0        0        0 0.0174 0.0159
#> 3 A01-03     0        0        0 0      0     
#> 4 A01-05     0        0        0 0      0.0212
#> 5 A01-07     0        0        0 0      0     
#> 6 A01-08     0        0        0 0.130  0
```

Use `get_distance ()` to calculate the distances between every site from
BBS data and every site from KOH. The output will be a matrix, unit =
meter.

``` r
d <- get_distance ()
d[1:6, 1:6]
#>       A01-01   A01-02   A01-03   A01-05   A01-07   A01-08
#> 103 23203.28 18449.35 26012.94 10647.22 16005.87 17058.76
#> 104 41565.48 39002.76 48499.49 39944.17 47039.29 48216.01
#> 108 41484.04 37660.67 46927.75 34118.97 39300.86 39509.64
#> 109 14953.28 11991.09 21502.74 16452.65 25089.91 27729.43
#> 110 34674.66 29918.11 37142.06 20694.77 22412.39 21519.84
#> 112 21772.73 17678.14 26863.43 15702.35 23103.45 24785.40
```

Use `buffer_from_koh (d)` to select BBS sites with `d` meters from KOH
sites. Four lists will be exported: `ele`, `ks_result`, `site`, `plot`.
`ele` is the elevations of KOH, entire BBS, and selected BBS sites.
`ks_result` is the results of Kolmogorov-Smirnov test between KOH and
different kinds of BBS site elevations. `site` is the site names of the
entire and selected BBS sites and the koh sites which at least one BBS
site in the buffered zone. `plot` contains four vectors of elevations.
Can be plot by `plotrix::multhist()`.

``` r
library (magrittr)
library (plotrix)
BBS_5km <- buffer_from_koh (5000)
BBS_5km$ele$ele_koh %>% head ()
#> [1]  96.65 320.72 185.40   3.41 554.49  19.37

BBS_5km$ks_result$ks_0914
#> 
#>  Two-sample Kolmogorov-Smirnov test
#> 
#> data:  ele_koh and ele_bbs0914
#> D = 0.26688, p-value = 0.0003774
#> alternative hypothesis: two-sided

BBS_5km$site_bbs$sitekm_1520 %>% head ()
#> NULL

multhist (BBS_5km$plot, freq = F)
```

<img src="man/figures/README-buffer-1.png" width="100%" />
