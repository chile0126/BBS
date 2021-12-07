
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

use `get_all_data ()` to import data that going to be used, which
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

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
d <- distance ()
head (d)[1:6]
#> [1] 22573.78 41568.87 41198.30 14813.86 34043.56 21394.98
```

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />
