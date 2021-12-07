test_that ("get_all_data() get data correctly", {
  get_all_data ()
  expect_equal(d0914$V1, d1520$V1)
})

test_that ("get_all_data() get all data correctly", {
  expect_equal(site_koh$GPS_ID %>% as.character (), colnames(dkoh)[-1])
})
