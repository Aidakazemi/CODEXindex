[![Build Status](https://travis-ci.org/resplab/CODEXindex.svg?branch=master)](https://travis-ci.org/resplab/CODEXindex)
[![CRAN Status](https://www.r-pkg.org/badges/version/CODEXindex)](https://cran.r-project.org/web/packages/CODEXindex/index.html)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

# CODEXindex

R package for the CODEX (comorbidity, obstruction, dyspnea, and previous severe exacerbations) index: Short and Medium-term (3 to 12 months) Prognosis in Patients Hospitalized for COPD Exacerbations described in [https://www.sciencedirect.com/science/article/pii/S0012369215345888](https://www.sciencedirect.com/science/article/pii/S0012369215345888).

## Installation

The latest stable version can be downloaded from CRAN:  
`install.packages ('CODEXindex')`

Alternatively, you can download the latest development version from GitHub:

```
install.packages("CODEXindex")
devtools::install_github("resplab/CODEXindex")
```

# Web App for CODEXindex 

CODEXindex is also available as web app, accessible at [http://resp.core.ubc.ca/ipress/CODEXindex](http://resp.core.ubc.ca/ipress/CODEXindex)

# CODEX Index

To get CODEX index, you will need to pass in patient's risk factors. For example: 

```
CODEXindex (age = 40,charlson = 8 , FEV1 = 40, mMRC = 3, exacerbation = 2)
```

The ***CODEXindex()*** function returns a CODEX index with possible values range from 0 to 10, with higher scores indicating a greater risk of death. It was a successful predictor of survival and readmission at 3 months and 1 year after hospital discharge for a COPD exacerbation. 

## Cloud-based API Access
The [PRISM platform](http://prism.resp.core.ubc.ca) allows users to access CODEXindex through the cloud. A MACRO-enabled Excel-file can be used to interact with the model and see the results. To download the PRISM Excel template file for CODEXindex please refer to the [PRISM model repository](http://resp.core.ubc.ca/ipress/prism).


## Citation

Please cite: 

```
Almagro, P., Soriano, J. B., Cabrera, F. J., Boixeda, R., Alonso-Ortiz, M. B., Barreiro, B., ... & Heredia, J. L. (2014). Short-and medium-term prognosis in patients hospitalized for COPD exacerbation: the CODEX index. Chest, 145(5), 972-980.
```
