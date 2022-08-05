#' Wrap the copied code with r markdown code-chunk fence
#'
#' @description  Simple copy a code and then go to Addins and click
#' Chunk the code. Also you can add a shortcut for
#' this Addin like any other Rstudio Addins.
#' @usage NULL
#' @export

chunkthis <- function() {
  copied <- paste0(clipr::read_clip(), collapse = "\n")
  rstudioapi::insertText(paste0("```{r}\n", copied, "\n```"))
}


