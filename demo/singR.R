require(singR)

## let's start trying to write "Give It Up"
give_up('it')

## in the classic song, it's "Baby" who should "Give It Up"
give_up('it', who = 'Baby')

## or use the package-bundled string variable instead
give_up('it', who = Baby)

## and really sing a song
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
