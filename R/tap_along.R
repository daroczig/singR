#' Type lyrics and echo a beep sound along songs defined by four parameters
#' @param time.pattn character vector
#' @param tempo numeric
#' @param lyrics character vector
#' @return Nothing is returned, the text is written to \code{stdout}.
#' @export
#' @importFrom beepr beep

tap.along <- function(time.pattn, tempo=60, lyrics=NA, repet=4) {
  require(beepr)
  # Note figures converted to time values according to tempo
  # (assuming 4/4 time signature)
  w  <-  4   * 60 / tempo   # whole note
  wd <-  6   * 60 / tempo   # whole note, dotted
  h  <-  2   * 60 / tempo   # half note
  hd <-  3   * 60 / tempo   # half note, dotted
  q  <-  1   * 60 / tempo   # quarter note
  qd <-  1.5 * 60 / tempo   # quarter note, dotted
  e  <- .5   * 60 / tempo   # eight note
  ed <- .75  * 60 / tempo   # eight note, dotted
  t  <- .33  * 60 / tempo   # triplet
  s  <- .25  * 60 / tempo   # sixteenth note

  time.pattn <- strsplit(time.pattn,split = ",\\s?")[[1]]

  for(r in 1:repet) {
    for(i in 1:length(time.pattn)) {
      beep();cat(lyrics[i], " ")
      Sys.sleep(get(time.pattn[i]))
    }
    cat("\n\n")
  }
  return()
}

