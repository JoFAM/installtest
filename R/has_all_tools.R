#' General install test
#'
#' This function just checks whether you have the necessary packages for
#' following the course.
#'
#' @param debug if \code{TRUE}, will print out extra information for debugging.
#' Defaults to `FALSE`.
#'
#' @return a single logical value
#'
#' @importFrom pkgbuild has_build_tools
#' @importFrom utils installed.packages
#'
#' @export
has_all_tools <- function(debug = FALSE){

  installed <- rownames(installed.packages())

  needs <- c("roxygen2", "pkgbuild", "devtools")

  pkgs <- all( needs %in% installed)
  tools <- pkgbuild::has_build_tools()

  return(tools && pkgs)
}
