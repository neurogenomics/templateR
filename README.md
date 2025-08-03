templateR
================
<img src='https://github.com/neurogenomics/templateR/raw/master/inst/hex/hex.png' title='Hex sticker for templateR' height='300'><br>
[![License:
GPL-3](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://cran.r-project.org/web/licenses/GPL-3)
[![](https://img.shields.io/badge/devel%20version-0.99.0-black.svg)](https://github.com/neurogenomics/templateR)
[![](https://img.shields.io/github/languages/code-size/neurogenomics/templateR.svg)](https://github.com/neurogenomics/templateR)
[![](https://img.shields.io/github/last-commit/neurogenomics/templateR.svg)](https://github.com/neurogenomics/templateR/commits/master)
<br> [![R build
status](https://github.com/neurogenomics/templateR/workflows/rworkflows/badge.svg)](https://github.com/neurogenomics/templateR/actions)
[![](https://codecov.io/gh/neurogenomics/templateR/branch/master/graph/badge.svg)](https://app.codecov.io/gh/neurogenomics/templateR)
<br>
<a href='https://app.codecov.io/gh/neurogenomics/templateR/tree/master' target='_blank'><img src='https://codecov.io/gh/neurogenomics/templateR/branch/master/graphs/icicle.svg' title='Codecov icicle graph' width='200' height='50' style='vertical-align: top;'></a>  
<h4>  
Authors: <i>yourGivenName yourFamilyName</i>  
</h4>
<h4>  
README updated: <i>Aug-03-2025</i>  
</h4>

<!-- To modify Package/Title/Description/Authors fields, edit the DESCRIPTION file -->

**\<—⬇️⬇️⬇️(Start of section that can be deleted after forking the
template)⬇️⬇️⬇️—\>**

## Citation

If you use the `templateR` R package template, or any of the
[`rworkflows`](https://github.com/neurogenomics/rworkflows) suite tools,
please cite:

> Brian M. Schilder, Alan E. Murphy, & Nathan G. Skene (2023) The
> rworkflows suite: automated continuous integration for quality
> checking, documentation website creation, and containerised deployment
> of R packages, Research Square;
> <https://doi.org/10.21203/rs.3.rs-2399015/v1>

## Setup

`templateR` is a template designed to make developing new R packages
easy by providing:

- **DESCRIPTION, vignettes/, tests/, R/, man/, inst/**: Basic skeleton
  for the package itself.  
- **README.Rmd**: Auto-populates based on the *DESCRIPTION* file (that
  can be knit to create *README.md*). Also contains
  [badges](https://github.com/GuangchuangYu/badger) that automatically
  update themselves.  
- **inst/hex/hexSticker.Rmd**: Template for creating [hex
  stickers](https://github.com/GuangchuangYu/hexSticker).
- **.github/workflows/\*.yml**: [GitHub
  Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
  workflow files that will automatically trigger code checks and pushing
  images to [DockerHub](https://hub-stage.docker.com/) every time you
  make a push to your GitHub repo (from
  [`rworkflows`](https://github.com/neurogenomics/rworkflows)).
- **inst/CITATION** : Allows users of your package to call
  `citation("<packageName>")`. Also used to auto-populate the
  *README.Rmd*.

To get started, simply click on the green **Use this template** button
at the top right of the `templateR` repo.

### GitHub Secrets

To use certain features of `rworkflows`, you may need to set up one or
more [GitHub
Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets):

- `PAT_GITHUB` \[Optional\]: Can grant access to private repos on GitHub
  Actions. You can generate your very own Personal Authentication Token
  with `usethis::create_github_token()`. See the [GitHub
  docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
  for details.  
- `DOCKER_TOKEN` \[Optional\]: Allows GitHub Actions to push to a
  [DockerHub](https://hub.docker.com) account.

### GitHub Pages

The [GitHub
Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
workflows included in this template will automatically create a
documentation website for your package via [GitHub
Pages](https://pages.github.com/).

After the **`rworkflows` action** has successfully run on Ubuntu for the
first time, a new branch will appear in your repo called “gh-pages”.

**\<—⬆️⬆️⬆️(End of section that can be deleted after forking the
template)⬆️⬆️⬆️—\>**

## `templateR`: packageTitle

### packageDescription.

If you use `templateR`, please cite:

<!-- Modify this by editing the file: inst/CITATION  -->

> author1, author2, author3 (publicationYear) articleTitle,
> *journalName*; volumeNumber, [linkToPublication](linkToPublication)

## Installation

``` r
if(!require("BiocManager")) install.packages("BiocManager")

BiocManager::install("neurogenomics/templateR")
library(templateR)
```

## Documentation

### [Website](https://neurogenomics.github.io/templateR)

### [Getting started](https://neurogenomics.github.io/templateR/articles/templateR)

<hr>

## Session Info

<details>

``` r
utils::sessionInfo()
```

    ## R version 4.4.2 (2024-10-31)
    ## Platform: aarch64-apple-darwin20
    ## Running under: macOS Sequoia 15.5
    ## 
    ## Matrix products: default
    ## BLAS:   /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib 
    ## LAPACK: /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.0
    ## 
    ## locale:
    ## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
    ## 
    ## time zone: America/New_York
    ## tzcode source: internal
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] gtable_0.3.6        jsonlite_2.0.0      renv_1.1.5         
    ##  [4] dplyr_1.1.4         compiler_4.4.2      BiocManager_1.30.26
    ##  [7] tidyselect_1.2.1    dichromat_2.0-0.1   rvcheck_0.2.1      
    ## [10] scales_1.4.0        yaml_2.3.10         fastmap_1.2.0      
    ## [13] here_1.0.1          ggplot2_3.5.2       R6_2.6.1           
    ## [16] generics_0.1.4      knitr_1.50          yulab.utils_0.2.0  
    ## [19] tibble_3.3.0        desc_1.4.3          dlstats_0.1.7      
    ## [22] rprojroot_2.1.0     pillar_1.11.0       RColorBrewer_1.1-3 
    ## [25] rlang_1.1.6         badger_0.2.5        xfun_0.52          
    ## [28] fs_1.6.6            cli_3.6.5           magrittr_2.0.3     
    ## [31] rworkflows_1.0.6    digest_0.6.37       grid_4.4.2         
    ## [34] rstudioapi_0.17.1   lifecycle_1.0.4     vctrs_0.6.5        
    ## [37] evaluate_1.0.4      glue_1.8.0          data.table_1.17.8  
    ## [40] farver_2.1.2        rmarkdown_2.29      tools_4.4.2        
    ## [43] pkgconfig_2.0.3     htmltools_0.5.8.1

</details>
