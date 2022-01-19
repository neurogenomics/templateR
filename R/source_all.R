#' Source all functions
#'
#' Source all R files in a directory at once. 
#' Also loads selected libraries. 
#' This function can be useful when developing R packages, 
#' instead of rebuilding the entire package every time you make a change 
#' (which is a more robust way to checking the package works, 
#' but is much slower).
#' 
#' @param path Directory containing R files.
#' @param pattern File name pattern to search for.
#' @param packages Packages to install and load. 
#' @param ... Additional arguments passed to \link[base]{source}. 
#' 
#' @return Null 
#' @keywords internal
source_all <- function(path="R/",
                       pattern="*.R$",
                       packages="dplyr", 
                       ...){   
    for(x in packages){ 
        require(x, character.only=TRUE)
    }
    #### Source all internal funcs at once ####
    file.sources = list.files(path =path,
                              pattern = pattern, 
                              full.names = TRUE, ignore.case = TRUE)
    message("Sourcing ",length(file.sources)," files.")
    out <- vapply(X = file.sources, 
                  FUN = function(x){try({source(x,...)})}, 
                  FUN.VALUE = character(1))
}
