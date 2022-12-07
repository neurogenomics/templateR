test_that("stopper works", { 
    
    msg <- "You have encountered an error"
    testthat::expect_error(stopper(msg = msg))
    testthat::expect_error(stopper(msg = msg, v=FALSE))
})
