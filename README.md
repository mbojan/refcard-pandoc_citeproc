Refcard pandoc citeproc
================

``` markdown
Blah blah [@wf;@coleman].
```

Blah blah (Wasserman and Faust [1994](#ref-wf); Coleman [1990](#ref-coleman)).

``` markdown
Blah blah [see @wf, pp. 33-35; also @coleman, chap. 1].
```

Blah blah (see Wasserman and Faust [1994](#ref-wf), 33–35; also Coleman [1990](#ref-coleman), chap. 1).

Locator terms
=============

``` markdown
see [@wf, book 1, chap. 1, pp. 33-35]
```

see (Wasserman and Faust [1994](#ref-wf), bk. 1, chap. 1, pp. 33-35)

``` markdown
see @wf [book 1]
see @wf [chapter 1]
see @wf [column 1]
see @wf [figure 1]
see @wf [folio 1]
see @wf [number 1]
see @wf [line 1]
see @wf [note 1]
see @wf [opus 1]
see @wf [paragraph 1]
see @wf [part 1]
see @wf [section 1]
see @wf [sub verbo 1]
see @wf [verse 1]
see @wf [volume 1]
```

see Wasserman and Faust ([1994](#ref-wf), bk. 1) see Wasserman and Faust ([1994](#ref-wf), chap. 1) see Wasserman and Faust ([1994](#ref-wf), col. 1) see Wasserman and Faust ([1994](#ref-wf), fig. 1) see Wasserman and Faust ([1994](#ref-wf), fol. 1) see Wasserman and Faust ([1994](#ref-wf), no. 1) see Wasserman and Faust ([1994](#ref-wf), l. 1) see Wasserman and Faust ([1994](#ref-wf), n. 1) see Wasserman and Faust ([1994](#ref-wf), op. 1) see Wasserman and Faust ([1994](#ref-wf), para. 1) see Wasserman and Faust ([1994](#ref-wf), pt. 1) see Wasserman and Faust ([1994](#ref-wf), sec. 1) see Wasserman and Faust ([1994](#ref-wf), s.v. 1) see Wasserman and Faust ([1994](#ref-wf), v. 1) see Wasserman and Faust ([1994](#ref-wf), vol. 1)

and

``` markdown
[@wf{ii, A, D-Z}, with suffix]
```

(Wasserman and Faust [1994](#ref-wf){ii, A, D-Z}, with suffix)

``` markdown
[@wf, {chapter. iv, vi-xi} with suffix here]
```

(Wasserman and Faust [1994](#ref-wf), {chapter. iv, vi-xi} with suffix here)

``` markdown
@wf [chapter 33] or 
Wasserman says blah again [-@wf]
```

Wasserman and Faust ([1994](#ref-wf), chap. 33) or Wasserman says blah again ([1994](#ref-wf))

Appendix A: BibTeX file
=======================

``` r
cat(readLines("refs.bib"), sep="\n")
```

    ## @book{wf,
    ##   title = {Social {{Network Analysis}}},
    ##   publisher = {{Cambridge University Press}},
    ##   date = {1994},
    ##   author = {Wasserman, S. and Faust, K.}
    ## }
    ## 
    ## 
    ## @book{coleman,
    ##   title = {Foundations of {{Social Science Theory}}},
    ##   publisher = {{Belknap Press}},
    ##   date = {1990},
    ##   author = {Coleman, James Samuel}
    ## }

References
==========

Coleman, James Samuel. 1990. *Foundations of Social Science Theory*. Belknap Press.

Wasserman, S., and K. Faust. 1994. *Social Network Analysis*. Cambridge University Press.
