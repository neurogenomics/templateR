test_that("messager works", {
    
    if(!is_32bit()){
        msg <- "Hello world"
        msg_out <- utils::capture.output(messager(msg),
                                         type = "message")
        testthat::expect_equal(msg, msg_out)
    } else {
        testthat::expect_null(NULL)   
    }
})
