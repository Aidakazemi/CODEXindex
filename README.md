[![R build status](https://github.com/resplab/codex/workflows/R-CMD-check/badge.svg)](https://github.com/resplab/codex/actions)
[![CRAN Status](https://www.r-pkg.org/badges/version/codexcopd)](https://cran.r-project.org/package=codexcopd)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## codexcopd

R package for the CODEX (comorbidity, obstruction, dyspnea, and previous severe exacerbations) index: Short and Medium-term (3 to 12 months) Prognosis in Patients Hospitalized for COPD Exacerbations described in [https://www.sciencedirect.com/science/article/pii/S0012369215345888](https://www.sciencedirect.com/science/article/pii/S0012369215345888).

### Installation

You can download the latest development version from GitHub:

```
install.packages("remotes")
remotes::install_github("resplab/codexcopd")
```

### CODEX Index

To get CODEX index, you will need to pass in patient's risk factors. For example: 

```
codex (age = 40,charlson = 8 , FEV1 = 40, mMRC = 3, exacerbation = 2)
```

The ***codex()*** function returns a CODEX index with possible values range from 0 to 10, with higher scores indicating a greater risk of death. It was a successful predictor of survival and readmission at 3 months and 1 year after hospital discharge for a COPD exacerbation. 

### Cloud-based API Access
The [Peer Models Network](http://www.peermodelsnetwork.com) allows users to access CODEXindex through the cloud. A MACRO-enabled Excel-file can be used to interact with the model and see the results. To download the PRISM Excel template file for CODEX index please refer to the [model repository](https://models.peermodelsnetwork.com).

__Cloud Access through R__

Users can access models on the Peer Models Network using the `peermodels` R package, available on [GitHub](https://github.com/resplab/peermodels). The following code snippet illustrates how you can run the model for example patient provided in the `codexcopd` package:

```
remotes::install_github (resplab/peermodels)
library(peermodels)
connect_to_model("codexcopd", api_key = YOUR_API_KEY)
input <- get_default_input()
results <- model_run(input)
```

__Cloud Access through Linux Bash__

In Ubuntu, you can call the API with `curl`:
```
curl \
-X POST \
-H "x-prism-auth-user: REPLACE_WITH_API_KEY" \
-H "Content-Type: application/json" \
-d '{"func":["prism_model_run"],"model_input":[{"age":40,"charlson":8,"FEV1":40,"mMRC":3,"exacerbation":2}]}' \
http


### Citation

Please cite: 

```
Almagro, P., Soriano, J. B., Cabrera, F. J., Boixeda, R., Alonso-Ortiz, M. B., Barreiro, B., ... & Heredia, J. L. (2014). Short-and medium-term prognosis in patients hospitalized for COPD exacerbation: the CODEX index. Chest, 145(5), 972-980.
```
