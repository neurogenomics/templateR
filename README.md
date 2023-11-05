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
README updated: <i>Nov-05-2023</i>  
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
if(!require("remotes")) install.packages("remotes")

remotes::install_github("neurogenomics/templateR")
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

    ## R version 4.3.1 (2023-06-16)
    ## Platform: aarch64-apple-darwin20 (64-bit)
    ## Running under: macOS Sonoma 14.1
    ## 
    ## Matrix products: default
    ## BLAS:   /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/lib/libRblas.0.dylib 
    ## LAPACK: /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0
    ## 
    ## locale:
    ## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
    ## 
    ## time zone: Europe/London
    ## tzcode source: internal
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] gtable_0.3.4        jsonlite_1.8.7      renv_1.0.3         
    ##  [4] dplyr_1.1.3         compiler_4.3.1      BiocManager_1.30.22
    ##  [7] tidyselect_1.2.0    rvcheck_0.2.1       scales_1.2.1       
    ## [10] yaml_2.3.7          fastmap_1.1.1       here_1.0.1         
    ## [13] ggplot2_3.4.4       R6_2.5.1            generics_0.1.3     
    ## [16] knitr_1.45          yulab.utils_0.1.0   tibble_3.2.1       
    ## [19] desc_1.4.2          dlstats_0.1.7       rprojroot_2.0.3    
    ## [22] munsell_0.5.0       pillar_1.9.0        RColorBrewer_1.1-3 
    ## [25] rlang_1.1.1         utf8_1.2.4          cachem_1.0.8       
    ## [28] badger_0.2.3        xfun_0.41           fs_1.6.3           
    ## [31] memoise_2.0.1.9000  cli_3.6.1           magrittr_2.0.3     
    ## [34] rworkflows_1.0.0    digest_0.6.33       grid_4.3.1         
    ## [37] rstudioapi_0.15.0   lifecycle_1.0.3     vctrs_0.6.4        
    ## [40] data.table_1.14.8   evaluate_0.23       glue_1.6.2         
    ## [43] fansi_1.0.5         colorspace_2.1-0    rmarkdown_2.25     
    ## [46] tools_4.3.1         pkgconfig_2.0.3     htmltools_0.5.6.1

</details>
