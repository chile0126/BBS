#' Distance matrix between BBS and KOH
#' @description Create a matrix containing distances from every site of BBS data to every site of KOH data
#' @return A matrix.
#' @export
#'
#' @examples
#' get_distance ()
get_distance <- function (){
  if (!exists ('site_bbs')){
    get_all_data ()
  }
  site_bbs_xy <- site_bbs %>% dplyr::select (X67, Y67) %>% as.data.frame ()
  rownames (site_bbs_xy) <- site_bbs$siteid
  colnames (site_bbs_xy) <- c('x', 'y')

  site_koh_xy <- site_koh %>% dplyr::select (X_COORDINA, Y_COORDINA) %>% as.data.frame ()
  rownames (site_koh_xy) <- site_koh$GPS_ID
  colnames (site_koh_xy) <- c('x', 'y')

  dd <- matrix (NA, nrow = length (site_koh_xy$x), ncol = length (site_bbs_xy$x), dimnames = list(site_koh$GPS_ID, site_bbs$siteid))
  for (koh in site_koh$GPS_ID %>% as.character ()){
    for (bbs in site_bbs$siteid){
      dd[koh, bbs] <- sqrt ((site_bbs_xy[bbs, 'x'] - site_koh_xy[koh, 'x'])^2 + (site_bbs_xy[bbs, 'y'] - site_koh_xy[koh, 'y'])^2)
    }
  }
  return (dd)
}
