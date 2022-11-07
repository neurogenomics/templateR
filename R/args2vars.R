#' Set function argument defaults to global variables
#'
#' Useful for development, where you want to quickly initialize default values
#' for a function while editing its internal code.
#' 
#' Note the lack of parentheses at the end of the function
#' (to avoid calling it).
#' 
#' @param fn The function for which you want to convert its default
#' argument values into global variables (e.g. \code{utils::packageDate}).
#' @param remove If \code{TRUE}, will remove globals 
#' assigned by \code{args2vars} (if supplying the same \code{fn} as before).
#' If the global does not exist, it will be skipped.
#' @inheritParams base::assign
#'
#' @keywords internal
#' @importFrom methods is show
#' @returns A named list with each argument's default value, or simply a
#' \link[base]{stop} function declaring "No default".
#' @source
#' \code{
#' #### Example (note the ::: notation as it is an internal function) ####
#' args_return <- templateR:::args2vars(fn = utils::packageDate)
#' }
args2vars <- function(fn, 
                      remove = FALSE, 
                      envir = .GlobalEnv){
    requireNamespace("rlang") 
    
    argument_list <- rlang::fn_fmls(fn = fn)
    args_return <- lapply(names(argument_list), function(arg){
        if(remove){
            message("Removing global: ",arg)
            if(exists(arg, envir = envir)){
                rm(list = arg, pos = envir, envir = envir)
            }
        } else {
            message("Assigning global ->> ",arg)
        } 
        #### Parse arguments ####
        arg_final <- tryCatch({
            arg_out <- argument_list[[arg]]
            if(methods::is(arg_out,"call")){
                arg_out <- tryCatch({ 
                    eval(arg_out)
                }, error = function(e) arg_out)
            }
            arg_out
        }, error = function(e) function(){stop("No default")})
        #### Assign global ####
        if(remove){ 
            if(exists(arg, envir = envir)) {
                warning("Global removal failed.") 
            }
        } else {
            assign(x = arg,
                   value = arg_final,
                   pos = .GlobalEnv,
                   envir = .GlobalEnv)
            if(!exists(arg, envir = envir)) {
                warning("Global assignment failed.")
            }
        } 
        return(arg_final)
    })
    names(args_return) <- names(argument_list)
    methods::show(args_return)
    return(args_return)
}
