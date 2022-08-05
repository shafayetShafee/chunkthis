#' Wrap the copied code with r markdown code-chunk fence
#'
#' @description Provides a Rstudio Addin wrap the copied code with r-markdown
#' code-chunk fence
#' @usage Simple copy a code and then go to \strong{Addins} and click
#' \strong{Chunk the code}. Also you can add a shortcut for
#' this Addin like any other Addins
#' @export

chunkthis <- function() {
  copied <- paste0(clipr::read_clip(), collapse = "\n")
  rstudioapi::insertText(paste0("```{r}\n", copied, "\n```"))
}


