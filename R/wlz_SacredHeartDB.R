wlz_ScaredHeartDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Sacred Heart")
  dbConnect(RSQLite::SQLite(),"SacredHeart_DB")
}
