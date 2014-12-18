% singR: helper functions to "sing" songs with R

Initially created for [Code Poetry Slam 2.0](http://stanford.edu/~mkagen/codepoetryslam/), where I plan to tribute to the *KC & The Sunshine Band* for [Give It Up](http://www.metrolyrics.com/give-it-up-lyrics-kc-and-the-sunshine-band.html). Yes, this is a fun project -- but I'm happy to merge serious pull requests :)

## Installation

This will probably never end up on CRAN:

```r
devtools::install_github('daroczig/singR')
```

## POC pseudo-R code

The minimal version:

```r
while (TRUE)
    give_up(it)
```

The refrain of the classic "Give It Up" song:

```r
rep(NA, 11)
give_up(what = it, who = Baby)
give_up(what = it)
give_up(what = it, who = Baby)
rep(NA, 11)
give_up(what = it, who = Baby)
give_up(what = it)
give_up(what = it, who = Baby)
verify(give_up(what = it, who = you), times = 2)
give_up(what = it)
```

Some parts of the above pseudo-R script actually works, e.g. the "Na, na, na, na ..." part:

```r
> rep(NA, 11)
 [1] NA NA NA NA NA NA NA NA NA NA NA
```

And we can also implement e.g. a minimal `give_up` function easily:

```r
give_up <- function(what, who = '')
	sprintf('%s give %s up', who, what)
```

## Future

But there's a lot more to do: my idea is to create a reference class for `it` with a function called `give` etc, which will end up in a beautiful, object-oriented R poetry! Or something else.
