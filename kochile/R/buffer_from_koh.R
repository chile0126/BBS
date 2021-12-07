buffer_from_koh <- function (d){
  #whether site_bbs and other data have been imported
  if (!exists (site_bbs)){
    get_all_data
  }

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
  ele_koh <- site_koh$ELEVATION
  ks_all <- ks.test (ele_koh, ele_bbs)
  ks_0914 <- ks.test (ele_koh, ele_bbs0914)
  ks_1520 <- ks.test (ele_koh, ele_bbs1520)
  out <- list (ele = list (ele_koh = ele_koh, ele_bbs = ele_bbs, ele_bbs0914 = ele_bbs0914, ele_bbs1520 = ele_bbs1520),
               ks_result = list (ks_all = ks_all, ks_0914 = ks_0914, ks_1520 = ks_1520),
               site_bbs = list (sitekm_all = sitekm_all, sitekm_0914 = sitekm_0914, sitekm_1520 = sitekm_1520),
               plot = list (ele_koh, ele_bbs, ele_bbs0914, ele_bbs1520))
  return (out)
}
