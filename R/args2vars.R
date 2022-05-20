#' Set function argument defaults to global variables
#'
#' Useful for development, where you want to quickly initialize default values
#' for a function while editing its internal code.
#' @param fn The function for which you want to convert its default
#' argument values into global variables (e.g. \code{utils::packageDate}).
#'
#' Note the lack of parentheses at the end of the function
#' (to avoid calling it).
#' @keywords internal
#' @returns A named list with each argument's default value, or simply a
#' \link[base]{stop} function declaring "No default".
#' @source
#' \code{
#' #### Example (note the ::: notation as it is an internal function) ####
#' args_return <- echoverseTemplate:::args2vars(fn = utils::packageDate)
#' }
args2vars <- function(fn){
    argument_list <- rlang::fn_fmls(fn = fn)
    message("Assigning globals:")
    args_return <- lapply(names(argument_list), function(arg){
        arg_final <- tryCatch({
            arg_out <- argument_list[[arg]]
            if(methods::is(arg_out,"call")){
                arg_out <- tryCatch({
                    eval(arg_out)
                }, error = function(e) arg_out)
            }
            return(arg_out)
        }, error = function(e) function(){stop("No default")})
        print(arg_final)
        assign(x = arg,
               value = arg_final,
               envir = .GlobalEnv)
    })
    names(args_return) <- names(argument_list)
    print(args_return)
   return(args_return)
}
