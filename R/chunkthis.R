#' Wrap the copied code with r markdown code chunk
#'
#' @description This Rstuido Addin wrap the copied code with r markdown code chunk
#' @export

chunkthis <- function() {
  copied <- paste0(clipr::read_clip(), collapse = "\n")
  rstudioapi::insertText(paste0("```{r}\n", copied, "\n```"))
}


