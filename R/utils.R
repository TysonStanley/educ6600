## From tidyverse package
text_col <- function(x) {
  # If RStudio not available, messages already printed in black
  if (!rstudioapi::isAvailable()) {
    return(x)
  }

  if (!rstudioapi::hasFun("getThemeInfo")) {
    return(x)
  }

  theme <- rstudioapi::getThemeInfo()

  if (isTRUE(theme$dark)) crayon::white(x) else crayon::black(x)

}

educ6600_version <- function(x) {
  version <- as.character(unclass(utils::packageVersion(x))[[1]])
  crayon::italic(paste0(version, collapse = "."))
}

#' @importFrom stats setNames
#' @importFrom tibble rownames_to_column
search_conflicts <- function(path = search()){

  ## Search for conflicts
  confs <- conflicts(path,TRUE)
  ## Grab those with the rlm package
  educ6600_conflicts <- confs$`package:educ6600`

  ## Find which packages have those functions that are conflicted
  if (length(educ6600_conflicts) != 0){
    other_conflicts <- list()
    for (i in educ6600_conflicts){
      other_conflicts[[i]] <- lapply(confs, function(x) any(grepl(i, x))) %>%
        do.call("rbind", .) %>%
        data.frame %>%
        stats::setNames(c("conflicted")) %>%
        tibble::rownames_to_column() %>%
        .[.$conflicted == TRUE &
            .$rowname != "package:educ6600",]
    }
  } else {
    other_conflicts <- data.frame()
  }
  other_conflicts
}
