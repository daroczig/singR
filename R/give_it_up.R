#' Generate string saying "give something up"
#' @param what string specifying what should be given up
#' @param who string specifying who should give up something
#' @return string
#' @examples
#' give_up('it')
#' give_up('it', 'Baby')
#' @export
give_up <- function(what, who = '')
    gsub(
        pattern = "^(\\s?)([a-z])(.*)",
        replace = "\\U\\2\\E\\3",
        x       = sprintf('%s give %s up!', who, what),
        perl    = TRUE
    )


#' Generate string saying if "someone can do something"
#' @param what string specifying what can be done
#' @param who string specifying who can do the thing
#' @param times numeric value representing the number of repetitions
#' @return string
#' @examples
#' verify(give_up(what = 'it', who = 'you'))
#' verify(give_up(what = 'it'), who = 'you', times = 2)
#' @export
verify <- function(what, who = '', times = 1)
    rep(
        x = paste0(
            'Can',
            gsub('  ', ' ', paste0(' ', who, ' ')),
            gsub(
                pattern = "([A-Z])(.*)(\\!)",
                replace = "\\L\\1\\E\\2",
                x       = what,
                perl    = TRUE),
            '?'),
        times = times)
