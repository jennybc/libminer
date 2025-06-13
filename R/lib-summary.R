#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine. I'm so
#' excited to have written this!
#'
#' @param sizes Logical. Requests the size of the package library on disk.
#'
#' @return A data.frame containing the count of packages in each of the user's
#'   libraries. If `sizes` is `TRUE`, also gives library size.
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      },
      FUN.VALUE = numeric(1)
    )
  }
  pkg_df
}
