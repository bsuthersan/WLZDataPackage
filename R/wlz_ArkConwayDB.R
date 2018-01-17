wlz_ArkConwayDB <- function() {
  setwd("~/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Ark Conway")
  dbConnect(RSQLite::SQLite(), "Ark_Conway_DataB")
}
