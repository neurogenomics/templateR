test_that("stopper works", {
    
    if(!is_32bit()){
        msg <- "You have encountered an error"
        testthat::expect_error(stopper(msg = msg))
        testthat::expect_error(stopper(msg = msg, v=FALSE))
    } else{
        testthat::expect_null(NULL)
    }
})
