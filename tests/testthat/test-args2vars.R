test_that("args2vars works", {
  
    args_return <- templateR:::args2vars(fn = utils::packageDate)
    testthat::expect_length(args_return, 5)
    testthat::expect_equal(args_return$date.fields[[1]],"Date")
    testthat::expect_error(args_return$pkg())
})
