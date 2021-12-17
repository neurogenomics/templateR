<img src='https://github.com/neurogenomics/templateR/templateR/raw/master/inst/hex/hex.png' height='300'><br><br>
[![](https://img.shields.io/badge/devel%20version-0.99.0-black.svg)](https://github.com/neurogenomics/templateR)
[![R build
status](https://github.com/neurogenomics/templateR/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/neurogenomics/templateR/actions)
[![](https://img.shields.io/github/last-commit/neurogenomics/templateR.svg)](https://github.com/neurogenomics/templateR/commits/master)
[![](https://codecov.io/gh/neurogenomics/templateR/branch/master/graph/badge.svg)](https://codecov.io/gh/neurogenomics/templateR)
[![License:
GPL-3](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://cran.r-project.org/web/licenses/GPL-3)
<h5>
Authors: <i>yourGivenName yourFamilyName</i>
</h5>
<h5>
README updated: <i>Dec-17-2021</i>
</h5>

<!-- To modify Package/Title/Description/Authors fields, edit the DESCRIPTION file -->

*&lt;—(Start of section that can be deleted after forking the
template)—&gt;*

## Setup

`templateR` is a template designed to make developing new R packages
easy by providing:

-   **DESCRIPTION, vignettes/, tests/, R/, man/, inst/**: Basic skeleton
    for the package itself.  
-   **README.Rmd**: Auto-populates based on the *DESCRIPTION* file (that
    can be knit to create *README.md*).  
-   **inst/hex/hexSticker.Rmd**: Template for creating [hex
    stickers](https://github.com/GuangchuangYu/hexSticker).
-   **.github/workflows/\*.yml**: [GitHub
    Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
    workflow files that will automatically trigger code checks and
    pushing images to [DockerHub](https://hub-stage.docker.com/) every
    time you make a push to your GitHub repo (from
    [`r_workflows`](https://github.com/neurogenomics/r_workflows)).
-   **inst/CITATIONS** : Allows users of your package to call
    `citation("<packageName>")`. Also used to auto-populate the
    *README.Rmd*.

### GitHub Secrets

Before pushing changes to your new R package, you will need to add two
[GitHub
Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets):

-   `PAT_GITHUB`: Speeds up installations on GitHub Actions.  
-   `DOCKER_TOKEN`: Allows GitHub Actions to push to the
    [neurogenomicslab
    DockerHub](https://hub.docker.com/orgs/neurogenomicslab) account.

Ask a fellow lab member for these tokens.

*&lt;—(End of section that can be deleted after forking the
template)—&gt;*

## `templateR`: packageTitle

### packageDescription.

If you use `templateR`, please cite:

<!-- Modify this my editing the file: inst/CITATION  -->

> author1, author1, author3 (publicationYear) articleTitle,
> *journalName*; volumeNumber, [linkToPublication](linkToPublication)

## Installation

``` r
if(!require("remotes")) install.packages("remotes")

remotes::install_github("https://github.com/neurogenomics/templateR")
library(templateR)
```

## Documentation

### [Website](https://neurogenomics.github.io/templateR)

### [Getting started](https://neurogenomics.github.io/templateR/articles/templateR)

<hr>

## Contact

<img src='https://www.neurogenomics.co.uk/author/neurogenomics-lab/avatar_hu361299fcf1f4e263f0b5bac1963703dd_83675_270x270_fill_q90_lanczos_center.jpg' height='100' style='border-radius: 100px'>

### [Neurogenomics Lab](https://www.neurogenomics.co.uk/)

UK Dementia Research Institute  
Department of Brain Sciences  
Faculty of Medicine  
Imperial College London  
<br>  
[GitHub](https://github.com/neurogenomics)  
[DockerHub](https://hub.docker.com/orgs/neurogenomicslab)
