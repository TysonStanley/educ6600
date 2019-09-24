
<!-- README.md is generated from README.Rmd. Please edit that file -->

# educ6600

<!-- badges: start -->

<!-- badges: end -->

The goal of `educ6600` is to provide data and some functions that are
useful for the EDUC/PSY 6600 course at Utah State University.

## Installation

You can install the developmental version of educ6600 from GitHub with:

``` r
# install.packages("remotes")  # if remotes not yet installed
remotes::install_github("tysonstanley/educ6600")
```

The data for the examples in the B sections of the homework are found in
the package. These can be accessed using the `data()` function. For
example, to access the `GRE` data set, we can use:

``` r
data("GRE")
GRE
#>   id verbalGRE_1 verbalGRE_2
#> 1  1         540         570
#> 2  2         510         520
#> 3  3         580         600
#> 4  4         550         530
#> 5  5         520         520
```

It contains the following data sets:

  - `schizo`
  - `GRE`
  - `test_scores`
  - `memory`
  - `data_wait`
  - `data_undergrad`
  - `data_memory`
  - `data_food`
  - `child_vars`
  - `audience_wide`
  - `textbook_wide`
  - `memory_wide`
  - `tasks_wide`
  - `anograms_wide`
  - `brain_wide`
  - `coupleIQs`
  - `speed_voice`
  - `data_12b4`
  - `schizo_metal`
  - `woman_parents`
  - `react_wealth`
