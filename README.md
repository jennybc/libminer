
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/jennybc/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jennybc/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package created as a part of a workshop and not meant for
serious use.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("jennybc/libminer")
```

## Example usage

To get a count of installed packages in each of your library locations,
optionally with the total sizes, use the `lib_summary()` function:

``` r
library(libminer)
lib_summary()
#>                                                                Library
#> 1 /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/library
#> 2                     /private/tmp/RtmpnsXHmm/temp_libpathf95024731ebe
#> 3                             /Users/jenny/Library/R/arm64/4.4/library
#>   n_packages
#> 1         29
#> 2          1
#> 3        192
# specify `sizes = TRUE` to calculate the total size on disk of your packages
#lib_summary(sizes = TRUE)
```
