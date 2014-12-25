# singR: helper functions to "sing" songs with R

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

## Working R code

After loading the `singR` package, the above psuedo-code should work:

```r
> library(singR)
> rep(NA, 11)
 [1] NA NA NA NA NA NA NA NA NA NA NA
> give_up(what = it, who = Baby)
[1] "Baby give it up!"
> give_up(what = it)
[1] "Give it up!"
> give_up(what = it, who = Baby)
[1] "Baby give it up!"
> rep(NA, 11)
 [1] NA NA NA NA NA NA NA NA NA NA NA
> give_up(what = it, who = Baby)
[1] "Baby give it up!"
> give_up(what = it)
[1] "Give it up!"
> give_up(what = it, who = Baby)
[1] "Baby give it up!"
> verify(give_up(what = it, who = you), times = 2)
[1] "Can you give it up?" "Can you give it up?"
> give_up(what = it)
[1] "Give it up!"
```

## Let R sing the song!

Building on the `koRpus` package, we can easily find all the syllables that can be written to the standard output in a timely manner:

```r
sing(
    capture.output(
        rep(NA, 11),
        give_up(what = it, who = Baby),
        give_up(what = it),
        give_up(what = it, who = Baby),
        rep(NA, 11),
        give_up(what = it, who = Baby),
        give_up(what = it),
        give_up(what = it, who = Baby),
        verify(give_up(what = it, who = you), times = 2),
        give_up(what = it)
    )
)
```

Resulting in:

<img src="demo.gif" width="400px"/>

## Future

But there's a lot more to do: my idea is to create a reference class for `it` with a function called `give` etc, which will end up in a beautiful, object-oriented R poetry! Or something else.
