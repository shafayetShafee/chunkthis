#' Wrap the copied code with r markdown code-chunk fence
#'
#' @description  Simple copy a code and then go to Addins and click
#' Chunk the code. Also you can add a shortcut for
#' this Addin like any other Rstudio Addins.
#' @usage NULL
#' @export

chunkthis <- function() {
  if (!clipr::clipr_available()) {
    error_message <- paste0(
      "Your system is not properly configured to allow access to the clipboard\n",
      "Additional Info:\n",
      clipr::dr_clipr()
      )
    stop(error_message)
  } else {
    copied <- paste0(clipr::read_clip(), collapse = "\n")
    rstudioapi::insertText(paste0("```{r}\n", copied, "\n```"))
  }
}


