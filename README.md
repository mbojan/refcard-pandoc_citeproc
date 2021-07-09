Refcard pandoc citeproc
================

-   [1 General things](#general-things)
-   [2 Locator terms](#locator-terms)
-   [3 Examples (English)](#examples-english)
    -   [3.1 Protect locators with curly
        braces](#protect-locators-with-curly-braces)
-   [Appendix A: BibTeX file](#appendix-a-bibtex-file)
-   [4 Appendix B: Software](#appendix-b-software)
-   [5 Forced references](#forced-references)
-   [References](#references)

This is a reminder (to me) how to use pandoc locator terms in
(R)Markdown documents. Things like:

``` markdown
Blah blah [@wf;@coleman].
```

Blah blah ([Wasserman and Faust 1994](#ref-wf); [Coleman
1990](#ref-coleman)).

or

``` markdown
Blah blah [see @wf, pp. 33-35; also @coleman, chap. 1].
```

Blah blah (see [Wasserman and Faust 1994, 33–35](#ref-wf); also [Coleman
1990, chap. 1](#ref-coleman)).

The terms themselves are locale-specific. They are defined in [CSL
locale files](https://github.com/citation-style-language/locales)
([McFarlane 2021](#ref-pandoc), chapter “Citation syntax”).

# 1 General things

Worthwhile metadata options

-   `link-citations: [true|false]` – create hyperlinks leading to items
    in the reference list

Force reference list to appear somewhere else than the end of the
document by placing

    ::: {#refs}
    :::

# 2 Locator terms

# 3 Examples (English)

``` markdown
see [@wf, book 1, chap. 1, pp. 33-35]
```

see ([Wasserman and Faust 1994, bk. 1](#ref-wf), chap. 1, pp. 33-35)

``` markdown
see @wf [book 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, bk. 1](#ref-wf))

``` markdown
see @wf [chapter 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, chap. 1](#ref-wf))

``` markdown
see @wf [column 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, col. 1](#ref-wf))

``` markdown
see @wf [figure 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, fig. 1](#ref-wf))

``` markdown
see @wf [folio 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, fol. 1](#ref-wf))

``` markdown
see @wf [number 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, no. 1](#ref-wf))

``` markdown
see @wf [line 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, l. 1](#ref-wf))

``` markdown
see @wf [note 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, n. 1](#ref-wf))

``` markdown
see @wf [opus 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, op. 1](#ref-wf))

``` markdown
see @wf [paragraph 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, para. 1](#ref-wf))

``` markdown
see @wf [part 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, pt. 1](#ref-wf))

``` markdown
see @wf [section 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, sec. 1](#ref-wf))

``` markdown
see @wf [sub verbo 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, s.v. 1](#ref-wf))

``` markdown
see @wf [verse 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, v. 1](#ref-wf))

``` markdown
see @wf [volume 1]
```

see [Wasserman and Faust](#ref-wf) ([1994, vol. 1](#ref-wf))

## 3.1 Protect locators with curly braces

``` markdown
[@wf{ii, A, D-Z}, with suffix]
```

([Wasserman and Faust 1994, ii, A, D–Z](#ref-wf), with suffix)

``` markdown
[@wf, {chapter iv, vi-xi} with suffix here]
```

([Wasserman and Faust 1994, chaps. iv, vi–xi](#ref-wf) with suffix here)

``` markdown
@wf [chapter 33] or 
Wasserman says blah again [-@wf]
```

[Wasserman and Faust](#ref-wf) ([1994, chap. 33](#ref-wf)) or Wasserman
says blah again ([1994](#ref-wf))

# Appendix A: BibTeX file

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
    ## 
    ## @manual{pandoc,
    ##   title={Pandoc's User Guide},
    ##   author={John McFarlane},
    ##   date={2021},
    ##   url = {https://pandoc.org/MANUAL.html}
    ## }

# 4 Appendix B: Software

``` r
rmarkdown::pandoc_version()
```

    ## [1] '2.11.3.1'

``` r
system2("pandoc-citeproc", "--version", stdout=TRUE)
```

    ## [1] "pandoc-citeproc 0.17"

# 5 Forced references

The reference list is force-placed here instead of the end of the
document:

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-coleman" class="csl-entry">

Coleman, James Samuel. 1990. *Foundations of Social Science Theory*.
Belknap Press.

</div>

<div id="ref-pandoc" class="csl-entry">

McFarlane, John. 2021. *Pandoc’s User Guide*.
<https://pandoc.org/MANUAL.html>.

</div>

<div id="ref-wf" class="csl-entry">

Wasserman, S., and K. Faust. 1994. *Social Network Analysis*. Cambridge
University Press.

</div>

</div>

# References
