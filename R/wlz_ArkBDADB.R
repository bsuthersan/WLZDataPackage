wlz_ArkBDADB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Ark Burlington Danes")
  dbConnect(RSQLite::SQLite(), "BDA_DataB")
}