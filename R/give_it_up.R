#' Generate string saying "give something up"
#'
#' .. content for \details{} ..
#' @param what string specifying what should be given up
#' @param who string specifying who should give up something
#' @return string
#' @examples
#' give_up('it')
#' give_up('it', 'Baby')
#' @export
give_up <- function(what, who = '')
	sprintf('%s give %s up', who, what)
