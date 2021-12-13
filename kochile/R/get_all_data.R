#' Get all the data from Goole account.
#'
#' @return
#' 6 variables
#' \itemize{
#' \item {\code{d0914}}
#' {Average densities of each bird between 2009 and 2014 from BBS data}
#' \item \code{d1520}
#' {Average densities of each bird between 2015 and 2020 from BBS data}
#' \item \code{dkoh}
#' {Average densities of each bird from KOH data}
#' \item \code{site_bbs}
#' {Locations and elevations of sites from BBS data}
#' \item \code{site_bbs0914}
#' {Locations and elevations of sites from BBS data between 2009 and 2014}
#' \item \code{site_bbs1520}
#' {Locations and elevations of sites from BBS data between 2015 and 2020}
#' \item \code{site_koh}
#' {Locations and elevations of sites from KOH data}
#' \item \code{den_env0914}
#' {Densities and environment variables between 2009 and 2014}
#' \item \code{den_env1520}
#' {Densities and environment variables between 2015 and 2020}
#' }
#' @export
#'
#'
#' @examples
#' get_all_data ()
get_all_data <- function (){
  site_bbs <<- range_speedread ('1f82TJz2Ktlu6jZkp1NITjuydPa4BqjDdouOLRu3o6TA')
  site_koh <<- range_speedread ('197_I_6VgzUQI1ueDVb32Uk-5nkqocYA2Y4NpthnX0d4')
  site_bbs1520 <<- range_speedread ('1cQi9cB8NA4K-CkyaLJKvTwzc_5Ftde4vsTVxftm4AFQ')
  site_bbs0914 <<- range_speedread ('1eVMKtxNIaJmurpKfpeX2Rj7km86aMz9Fa0XWPryhaFg')
  d0914 <<- range_speedread ('15PNROSdeRqW89lk9QYBlqDETMAgavq9iP37MSVWEX8o')
  d1520 <<- range_speedread ('17GdWOOFWnLbdfUEl1JGicutnY4redbhH8TtKcVoyqt8')
  dkoh <<- range_speedread ('187XSbIpspBvVOpe4ULxe6eNMi6ROxTYFCckzI9H6AL4')
  den_env0914 <<- range_speedread ('1ehdeE57QuMHGMNhWUs_rEoQtaYV19iQV6ztrG6HnE9Y')
  den_env1520 <<- range_speedread ('1L7G1GLv-tu0GFPVLs7ps_nRMnXPKiH0iyEPJwCbgbhk')
}
