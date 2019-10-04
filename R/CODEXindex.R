#' The CODEX Index: Short and Medium-term Prognosis in Patients Hospitalized for COPD Exacerbations
#
#' @param age a number for age
#' @param charlson a number for charlson index
#' @param FEV1 a number for forced expiratory volume in one second (FEV1) expressed as percentage
#' @param mMRC a number for the dyspnea scale of modified Medical Research Council (mMRC)
#' @param exacerbation a number for severe exacerbations of COPD during the previous year (hospitalization or ED consultations)
#'
#' @examples
#' CODEXindex (age = 40,charlson = 8 , FEV1 = 40, mMRC = 3, exacerbation = 2)
#' CODEXindex (age = 55,charlson = 4 , FEV1 = 40, mMRC = 3, exacerbation = 2)
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/pubmed/24077342}

CODEXindex <- function (age, charlson, FEV1, mMRC, exacerbation) {


  #one extra point for chalrson index per decade of life  over the age of 50 years (right?)
  if (age >= 50) {

    charlson = charlson + 1
  } else charlson =  charlson



  if (charlson >= 0 & charlson < 5) {
    CI_score = 0
    } else if (charlson >= 5 & charlson < 9){
      CI_score = 1
    } else if (charlson >= 8){
      CI_score = 2
    }

   if (FEV1 >= 65) {
     FEV1_score = 0
   } else if (FEV1 >= 50 & FEV1 < 65) {
     FEV1_score = 1
   } else if (FEV1 >= 36 & FEV1 < 50) {
     FEV1_score = 2
   } else if (FEV1 <= 35) {
     FEV1_score = 3
   }

   if (mMRC >= 0 & mMRC < 2) {
     MRC_score = 0
   } else if (mMRC == 2) {
     MRC_score = 1
   } else if (mMRC == 3) {
     MRC_score = 2
   } else if (mMRC == 4) {
     MRC_score = 3
   }

   if (exacerbation == 0) {
     exac_score = 0
   } else if (exacerbation >= 1 & exacerbation < 3) {
     exac_score = 1
   } else if (exacerbation >= 3){
     exac_score = 2
   }


  CODEX_score <- c (CI_score, FEV1_score, MRC_score, exac_score)
  results <- list()
  results$CODEX_score <- sum (CODEX_score)

  return (results)

}


