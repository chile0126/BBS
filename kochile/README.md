
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
#> 
#> 載入套件：'googlesheets4'
#> 下列物件被遮斷自 'package:googledrive':
#> 
#>     request_generate, request_make
get_all_data ()
#> ! Using an auto-discovered, cached token.
#>   To suppress this message, modify your code or options to clearly consent to
#>   the use of a cached token.
#>   See gargle's "Non-interactive auth" vignette for more details:
#>   <https://gargle.r-lib.org/articles/non-interactive-auth.html>
#> i The googlesheets4 package is using a cached token for
#>   'r09b44003@g.ntu.edu.tw'.
#> Auto-refreshing stale OAuth token.
#> v Reading from "site_bbs".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/1f82TJz2Ktlu6jZkp1NITjuydPa4BqjDdouOLRu3o6TA/export?format=csv>
#> Rows: 547 Columns: 8
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr (1): siteid
#> dbl (7): X67, Y67, X97, Y97, X84, Y84, elevation
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "site_koh".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/197_I_6VgzUQI1ueDVb32Uk-5nkqocYA2Y4NpthnX0d4/export?format=csv>
#> Rows: 141 Columns: 6
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> dbl (6): GPS_ID, X_COORDINA, Y_COORDINA, POINT_X, POINT_Y, ELEVATION
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "site_bbs1520".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/1cQi9cB8NA4K-CkyaLJKvTwzc_5Ftde4vsTVxftm4AFQ/export?format=csv>
#> Rows: 501 Columns: 8
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr (1): siteid
#> dbl (7): X67, Y67, X97, Y97, X84, Y84, elevation
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "site_bbs0914".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/1eVMKtxNIaJmurpKfpeX2Rj7km86aMz9Fa0XWPryhaFg/export?format=csv>
#> Rows: 408 Columns: 8
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr (1): siteid
#> dbl (7): X67, Y67, X97, Y97, X84, Y84, elevation
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "D0914".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/15PNROSdeRqW89lk9QYBlqDETMAgavq9iP37MSVWEX8o/export?format=csv>
#> New names:
#> * `` -> ...1
#> Rows: 105 Columns: 552
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr (143): V1, A02-06, A02-07, A02-08, A03-06, A03-09, A03-10, A03-12, A03-2...
#> dbl (409): ...1, A01-01, A01-02, A01-03, A01-05, A01-07, A01-08, A01-12, A02...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "D1520".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/17GdWOOFWnLbdfUEl1JGicutnY4redbhH8TtKcVoyqt8/export?format=csv>
#> New names:
#> * `` -> ...1
#> Rows: 105 Columns: 552
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr  (48): V1, A01-05, A01-08, A02-05, A04-11, A04-12, A04-27, A05-02, A05-0...
#> dbl (504): ...1, A01-01, A01-02, A01-03, A01-07, A01-12, A02-01, A02-02, A02...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> v Reading from "Dkoh".
#> i Export URL:
#>   <https://docs.google.com/spreadsheets/d/187XSbIpspBvVOpe4ULxe6eNMi6ROxTYFCckzI9H6AL4/export?format=csv>
#> Rows: 105 Columns: 142
#> -- Column specification --------------------------------------------------------
#> Delimiter: ","
#> chr   (1): .
#> dbl (141): 103, 104, 108, 109, 110, 112, 113, 115, 117, 118, 120, 126, 127, ...
#> 
#> i Use `spec()` to retrieve the full column specification for this data.
#> i Specify the column types or set `show_col_types = FALSE` to quiet this message.
ls ()
#> character(0)
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
