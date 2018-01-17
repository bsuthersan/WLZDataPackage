wlz_ArkBentworthDB <- function(x) {
  setwd("~/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Ark Bentworth")
 dbConnect(RSQLite::SQLite(), "Ark_Bentworth_DataB")
}

