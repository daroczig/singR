#' Writing a number of syllables on standard output defined by \code{speed} number of seconds
#' @param text character vector
#' @param speed numeric
#' @param language language to be used for finding hyphens (passed to \code{koRpus})
#' @return Nothing is returned, the text is written to \code{stdout}.
#' @export
#' @importFrom hyphenatr hyphenate switch_dict curr_dict
sing <- function(text, speed = 4, language = 'en_US') {

    ## store and restore hyphenatr language
    lang <- curr_dict()
    suppressMessages(switch_dict(language))
    on.exit(suppressMessages(switch_dict(lang)))

    ## recursive stuff
    if (length(text) > 1)
        return(invisible(sapply(text, sing, speed = speed)))

    ## find syllabus by hyphens
    text <- hyphenate(text, simplify = FALSE)[[1]]

    ## split it
    text <- unlist(strsplit(text, split = ' |-'))

    ## remove NULL
    text <- text[which(nchar(text) > 0)]

    ## sing!
    for (s in text) {
        cat(s, '')
        Sys.sleep(1/speed)
    }

    ## stop for a while after LF
    cat('\n')
    Sys.sleep(1/6)

}
