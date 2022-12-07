test_that("source_all works", {
    
    source_all(path = "../../R", 
               packages = "stats") 
    testthat::expect_true(exists("messager"))
    testthat::expect_true("stats" %in% .packages())
})
