test_that("source_all works", {
  
    if(!is_32bit()){
        source_all(path = "../../R") 
        testthat::expect_true(exists("messager"))
        testthat::expect_true("dplyr" %in% .packages())
    } else {
        testthat::expect_null(NULL)
    } 
})
