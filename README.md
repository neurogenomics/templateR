<img src='https://github.com/neurogenomics/templateR/raw/master/inst/hex/hex.png' height='300'><br><br>
[![](https://img.shields.io/badge/devel%20version-0.99.0-black.svg)](https://github.com/neurogenomics/templateR)
[![R build
status](https://github.com/neurogenomics/templateR/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/neurogenomics/templateR/actions)
[![](https://img.shields.io/github/last-commit/neurogenomics/templateR.svg)](https://github.com/neurogenomics/templateR/commits/master)
[![](https://codecov.io/gh/neurogenomics/templateR/branch/master/graph/badge.svg)](https://codecov.io/gh/neurogenomics/templateR)
[![License:
GPL-3](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://cran.r-project.org/web/licenses/GPL-3)
<h4>
Authors: <i>yourGivenName yourFamilyName</i>
</h4>
<h4>
README updated: <i>Dec-17-2021</i>
</h4>

<!-- To modify Package/Title/Description/Authors fields, edit the DESCRIPTION file -->

*&lt;—(Start of section that can be deleted after forking the
template)—&gt;*

## Setup

`templateR` is a template designed to make developing new R packages
easy by providing:

-   **DESCRIPTION, vignettes/, tests/, R/, man/, inst/**: Basic skeleton
    for the package itself.  
-   **README.Rmd**: Auto-populates based on the *DESCRIPTION* file (that
    can be knit to create *README.md*). Also contains
    [badges](https://github.com/GuangchuangYu/badger) that automatically
    update themselves.  
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

To get started, simply click on the green **Use this template** button
at the top right of the `templateR` repo.

### GitHub Secrets

Before pushing changes to your new R package, you will need to add two
[GitHub
Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets):

1.  `PAT_GITHUB`: Speeds up installations and gives access to private
    repos on GitHub Actions. You can generate your very own Personal
    Authentication Token using [these
    instructions](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).  
2.  `CODECOV_TOKEN`: Allows [code coverage](https://app.codecov.io/)
    results to be displayed via the `badger::badge_codecov()` at the top
    of the *README.Rmd*. This [Codecov](https://app.codecov.io/) token
    is repository-specific and can be found
    [here](https://app.codecov.io/gh/neurogenomics/templateR).
3.  `DOCKER_TOKEN`: Allows GitHub Actions to push to the
    [neurogenomicslab
    DockerHub](https://hub.docker.com/orgs/neurogenomicslab) account.
    Ask a fellow [Neurogenomics Lab](https://www.neurogenomics.co.uk/)
    member for this token.

### GitHub Pages

The [GitHub
Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
workflows included in this template will automatically create a
documentation website for your package via [GitHub
Pages](https://pages.github.com/). This requires several initial setup
steps (you only need to do these once per repo):

1.  After *check-bioc-docker.yml* has successfully run on Ubuntu for the
    first, a new branch will appear in your repo called “gh-pages”.  
2.  In the **Settings** tab of your repo, go to **Pages** on the left.
    Then under **Source** select `"branch: gh-pages"` and `"root"` from
    the respective dropdown menus. Finally, click the **Save** button.

*Note*: If you don’t have admin access to your repo, you will need to
ask someone who does to change this for you.

*&lt;—(End of section that can be deleted after forking the
template)—&gt;*

## `templateR`: packageTitle

### packageDescription.

If you use `templateR`, please cite:

<!-- Modify this my editing the file: inst/CITATION  -->

> author1, author2, author3 (publicationYear) articleTitle,
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

### [Neurogenomics Lab](https://www.neurogenomics.co.uk/)

UK Dementia Research Institute  
Department of Brain Sciences  
Faculty of Medicine  
Imperial College London  
[GitHub](https://github.com/neurogenomics)  
[DockerHub](https://hub.docker.com/orgs/neurogenomicslab)

<br>
