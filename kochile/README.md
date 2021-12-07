
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
`site_bbs1520` and `site_koh`

``` r
library (googledrive)
library (googlesheets4)
library (kochile)
get_all_data ()
head (site_koh)
#> # A tibble: 6 x 6
#>   GPS_ID X_COORDINA Y_COORDINA POINT_X POINT_Y ELEVATION
#>    <dbl>      <dbl>      <dbl>   <dbl>   <dbl>     <dbl>
#> 1    103    316638.   2771391.    122.    25.0     96.6 
#> 2    104    293801.   2750174.    121.    24.9    321.  
#> 3    108    308016.   2749326     122.    24.9    185.  
#> 4    109    302810.   2775639.    122.    25.1      3.41
#> 5    110    323052.   2761881.    122.    25.0    554.  
#> 6    112    308590.   2769383.    122.    25.0     19.4
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
```

Use `get_distance ()` to calculate the distances between every site from
BBS data and every site from KOH. The output will be a matrix, unit =
meter.

``` r
d <- get_distance ()
d[1:6, 1:6]
#>       A01-01   A01-02   A01-03   A01-05   A01-07   A01-08
#> 103 22573.78 17841.19 25581.57 10583.34 16369.57 17575.30
#> 104 41568.87 39092.67 48569.97 40290.18 47471.56 48700.86
#> 108 41198.30 37435.94 46745.51 34175.27 39515.91 39800.76
#> 109 14813.86 12098.41 21558.84 17146.69 25805.91 28486.31
#> 110 34043.56 29299.83 36643.14 20306.73 22350.25 21597.45
#> 112 21394.98 17405.51 26681.44 16053.78 23623.11 25391.21
```

Use `buffer_from_koh (d)` to select BBS sites with `d` meters from KOH
sites. Four lists will be exported: `ele`, `ks_result`, `site_bbs`,
`plot`. `ele` is the elevations of KOH, entire BBS, and selected BBS
sites. `ks_result` is the results of Kolmogorov-Smirnov test between KOH
and different kinds of BBS site elevations `site_bbs` is the site names
of the entire and selected BBS sites. `plot` contains four vectors of
elevations. Can be plot by `plotrix::multhist()`.

``` r
library (plotrix)
BBS_5km <- buffer_from_koh (5000)
BBS_5km$ele$ele_koh
#>   [1]   96.65  320.72  185.40    3.41  554.49   19.37  549.19   11.89  252.52
#>  [10]  656.50    5.30  211.38  551.52  142.19  127.81  269.78 1024.29  226.31
#>  [19]  710.58 1595.41  327.91  467.90  120.30  492.72   73.68  285.92  574.32
#>  [28]  396.51  150.60  276.21  524.28  712.20  140.41  102.01    2.11 2180.89
#>  [37] 1326.22 1165.50  880.41 1711.90 1331.01  465.79 2678.69 2065.68 2097.10
#>  [46]  715.39  875.33  568.52 1412.62  289.48   72.63  194.18 1251.50  416.28
#>  [55] 1842.41  114.62  166.32  111.41 1709.90  140.62   81.01 1592.50 2357.83
#>  [64] 1743.78   56.93  511.90  225.29   77.31  346.33  193.68  191.62 3092.43
#>  [73] 2939.43 1046.59 2287.97 1959.93 1247.29 2074.49  568.93 1090.27  776.60
#>  [82]  926.27  949.52 1754.92 1650.32  994.23  727.10  803.32  667.58 1969.03
#>  [91] 1843.32 1502.53 1660.71 2172.03 2684.40 1367.17 2261.70 1505.69  822.88
#> [100] 1945.42 1866.99 1210.79  419.98  510.39  389.68   35.24  442.91  883.99
#> [109] 1354.32   96.52   53.09  160.00 1415.18   50.82  255.08  353.00 1942.70
#> [118]  253.60 2470.92 2498.02 3219.62  960.98 1788.11 1606.52  332.99  133.92
#> [127]  109.11    0.09 2774.90  817.62 2029.89 1267.50 1246.51  812.50  269.03
#> [136]  670.88 1736.62 2278.57 1094.52 3210.93 1824.81
BBS_5km$ks_result$ks_0914
#> 
#>  Two-sample Kolmogorov-Smirnov test
#> 
#> data:  ele_koh and ele_bbs0914
#> D = 0.32747, p-value = 6.379e-07
#> alternative hypothesis: two-sided
BBS_5km$site_bbs$site_bbs1520
#> NULL
multhist (BBS_5km$plot)
```

<img src="man/figures/README-buffer-1.png" width="100%" />
