test_that("args2vars works", {
  
    run_tests <- function(args_return){
        testthat::expect_length(args_return, 5)
        testthat::expect_equal(args_return$date.fields[[1]],"Date")
        testthat::expect_error(args_return$pkg())
    }
    args_return0 <- templateR:::args2vars(fn = utils::packageDate)
    run_tests(args_return0)
    
    
    args_return1 <- templateR:::args2vars(fn = utils::packageDate,
                                         remove = TRUE)
    run_tests(args_return1)
    
    #### Reassign existing globals ####
    date.fields <<- args_return0$date.fields
    args_return2 <- templateR:::args2vars(fn = utils::packageDate,  
                                          reassign = FALSE)
    
    run_tests(args_return2)
    
    date.fields <<- args_return0$date.fields
    args_return3 <- templateR:::args2vars(fn = utils::packageDate,  
                                          reassign = TRUE)
    run_tests(args_return3)
    
    
    date.fields <<- args_return0$date.fields
    args_return4 <- templateR:::args2vars(fn = utils::packageDate,  
                                          remove = TRUE)
    run_tests(args_return4)
})
