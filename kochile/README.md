
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
library (kochile)
library (googledrive)
library (googlesheets4)
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
head (d1520)
#> # A tibble: 6 x 552
#>    ...1 V1       `A01-01` `A01-02` `A01-03` `A01-05`  `A01-07` `A01-08` `A01-12`
#>   <dbl> <chr>       <dbl>    <dbl>    <dbl> <chr>        <dbl> <chr>       <dbl>
#> 1     1 八哥      0        0         0      no survey        0 no surv~        0
#> 2     2 叉尾雨燕  0        0.133     0      no survey        0 no surv~        0
#> 3     3 大赤啄木  0        0         0      no survey        0 no surv~        0
#> 4     4 大卷尾    0.159    0         0.232  no survey        0 no surv~        0
#> 5     5 大冠鷲    0.00531  0.00796   0.0265 no survey        0 no surv~        0
#> 6     6 大彎嘴    0.0152   0.171     0.0265 no survey        0 no surv~        0
#> # ... with 543 more variables: A02-01 <dbl>, A02-02 <dbl>, A02-03 <dbl>,
#> #   A02-05 <chr>, A02-06 <dbl>, A02-07 <dbl>, A02-08 <dbl>, A03-01 <dbl>,
#> #   A03-03 <dbl>, A03-06 <dbl>, A03-07 <dbl>, A03-09 <dbl>, A03-10 <dbl>,
#> #   A03-12 <dbl>, A03-16 <dbl>, A03-18 <dbl>, A03-19 <dbl>, A03-20 <dbl>,
#> #   A03-21 <dbl>, A03-22 <dbl>, A03-23 <dbl>, A03-24 <dbl>, A04-01 <dbl>,
#> #   A04-02 <dbl>, A04-03 <dbl>, A04-04 <dbl>, A04-05 <dbl>, A04-06 <dbl>,
#> #   A04-09 <dbl>, A04-10 <dbl>, A04-11 <chr>, A04-12 <chr>, A04-16 <dbl>, ...
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
