
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

This is a basic example which shows you how to solve a common problem:

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
