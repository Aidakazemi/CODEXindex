#' CODEXindex
#
#' @param charlson a number for charlson index with one extra point per decade of life  over the age of 50 years
#' @param FEV1 a number for forced expiratory volume in one second (FEV1) expressed as percentage
#' @param mMRC a number for the dyspnea scale of modified Medical Research Council (mMRC)
#' @param exacerbation a number for severe exacerbations of COPD during the previous year (hospitalization or ED consultations)
#'
#' @example
#'
#' @source {\url }

CODEXindex <- function(charlson, FEV1, mMRC, Exacerbation) {

  if (charlson >= 0 & charlson < 5) {
    CI_score = 0
    } else if (charlson >= 5 & charlson <9){
      CI_score = 1
    } else if (charlson >= 8){
      CI_score = 2
    }

   if (FEV1 >= 65) {
     FEV_score = 0
   } else if (FEV1 >= 50 & FEV1 < 65) {
     FEV1_score = 1
   } else if (FEV1 >= 36 & FEV1 <50) {
     FEV1_score = 2
   } else if (FEV1 <= 35) {
     FEV1_score = 3
   }

   if (mMRC >= 0 & mMRC <2) {
     MRC_score = 0
   } else if (mMRC = 2) {
     MRC_score = 1
   } else if (mMRC = 3) {
     MRC_score = 2
   } else if (mMRC = 4) {
     MRC_score = 3
   }

   if (exacerbation = 0) {
     exac_score = 0
   } else if (exacerbation >= 1 & exacerbation < 3) {
     exac_score = 1
   } else if (exacerbation >= 3){
     exac_score = 2
   }


  CODEX_score <- c(charlson_score, FEV1_score, MRC_score, exac_score)
  total_score <- as.list(sum(CODEX_score, na.rm = FALSE))

  return(total_score)

}


