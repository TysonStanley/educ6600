
test_that("data loads", {
  dim(coupleIQs) %>%
    expect_equal(c(10, 3))

  dim(speed_voice) %>%
    expect_equal(c(2, 3))
})

