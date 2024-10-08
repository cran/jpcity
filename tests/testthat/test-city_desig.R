test_that("city_desig_merge works", {
  city <- parse_city(c("01101", "13101"))

  expect_s3_class(city_desig_merge(city), "jpcity_city")
  expect_s3_class(city_desig_merge(city, merge_tokyo = TRUE), "jpcity_city")
})

test_that("city_desig_split works", {
  city <- parse_city(c("01100", "13100"))

  expect_true(is.list(city_desig_split(city)))
  expect_true(is.list(city_desig_split(city, split_tokyo = FALSE)))
})

test_that("is_city_desig works", {
  city <- parse_city(c("01100", "01101", "01202",
                       "13100", "13101"))

  expect_equal(is_city_desig(city),
               c(TRUE, FALSE, FALSE,
                 TRUE, FALSE))
  expect_equal(is_city_desig(city,
                             type = "ward"),
               c(FALSE, TRUE, FALSE,
                 FALSE, TRUE))
  expect_equal(is_city_desig(city,
                             type = c("city", "ward")),
               c(TRUE, TRUE, FALSE,
                 TRUE, TRUE))
})
