#' Certain distance buffer from KOH data
#' @description Select sites within certain distance from sites in KOH data. Also exam Kolmogorov-Smirnov test to see whether the chosen BBS sites' elevation distributions are similar to KOH's.
#' @param d buffer distance from sites in KOH data (meter)
#'
#' @return a list with four list
#' \itemize{
#' \item{\code{ele}}
#' \itemize{
#' \item{\code{ele_koh}}  {elevations of every site from KOH data}
#' \item{\code{ele_bbs}}  {elevations of every site from BBS data}
#' \item{\code{ele_bbs0914}}  {elevations of selected BBS sites between 2009 and 2014}
#' \item{\code{ele_bbs1520}}  {elevations of selected BBS sites between 2015 and 2020}
#' }
#' \item{\code{ks_result}}
#' \itemize{
#' \item{\code{ks_all}} {Kolmogorov-Smirnov test result between KOH and BBS}
#' \item{\code{ks_0914}}  {Kolmogorov-Smirnov test result between KOH and 2009-2014 BBS}
#' \item{\code{ks_1520}}  {Kolmogorov-Smirnov test result between KOH and 2015-2020 BBS}
#' }
#' \item{\code{site_bbs}}
#' \itemize{
#' \item{\code{sitekm_all}} {site names of BBS data}
#' \item{\code{sitekm_0914}}  {site names of selected BBS data between 2009 and 2014}
#' \item{\code{sitekm_1520}}  {site names of selected BBS data between 2015 and 2020}
#' }
#' \item{\code{plot}}\cr
#' {four vectors (without names): \code{ele_koh}, \code{ele_bbs}, \code{ele_bbs0914}, \code{ele_bbs1520}. Can be plot as histogram by \code{plotrix::multhist}.}
#' }
#'
#' @export
#'
#' @examples
#' buffer5000 <- buffer_from_koh (5000)
#' multhist (buffer5000$plot, freq = F)
#'
buffer_from_koh <- function (d){

  #whether site_bbs and other data have been imported
  if (!exists ('site_bbs')){
    get_all_data ()
  }
  distance <- get_distance ()

  #all bbs data
  sitekm_all <- c()
  for (bbs in site_bbs$siteid){
    if (sum (distance[, bbs] <= d) > 0){sitekm_all <- c(sitekm_all, bbs)}
  }
  ele_bbs <- site_bbs$elevation[which (site_bbs$siteid %in% sitekm_all)]

  #09-14 bbs data
  sitekm_0914 <- c()
  for (bbs in site_bbs0914$siteid){
    if (sum (distance[, bbs] <= d) > 0){sitekm_0914 <- c(sitekm_0914, bbs)}
  }
  ele_bbs0914 <- site_bbs0914$elevation[which (site_bbs0914$siteid %in% sitekm_0914)]

  #15-20 bbs data
  sitekm_1520 <- c()
  for (bbs in site_bbs1520$siteid){
    if (sum (distance[, bbs] <= d) > 0){sitekm_1520 <- c(sitekm_1520, bbs)}
  }
  ele_bbs1520 <- site_bbs1520$elevation[which (site_bbs1520$siteid %in% sitekm_1520)]

  #koh data
  sitekm_koh <- c()
  for (koh in site_koh$GPS_ID){
    if (sum (distance[as.character (koh), ] <= d) > 0){sitekm_koh <- c(sitekm_koh, koh)}
  }
  ele_koh <- site_koh$ELEVATION[which (site_koh$GPS_ID %in% sitekm_koh)]



  ks_all <- ks.test (ele_koh, ele_bbs)
  ks_0914 <- ks.test (ele_koh, ele_bbs0914)
  ks_1520 <- ks.test (ele_koh, ele_bbs1520)
  out <- list (ele = list (ele_koh = ele_koh, ele_bbs = ele_bbs, ele_bbs0914 = ele_bbs0914, ele_bbs1520 = ele_bbs1520),
               ks_result = list (ks_all = ks_all, ks_0914 = ks_0914, ks_1520 = ks_1520),
               site_bbs = list (sitekm_all = sitekm_all, sitekm_0914 = sitekm_0914, sitekm_1520 = sitekm_1520, sitekm_koh = sitekm_koh),
               plot = list (ele_koh, ele_bbs, ele_bbs0914, ele_bbs1520))
  return (out)
}
