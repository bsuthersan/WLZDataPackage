wlz_MilesCoverdaleDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Miles Coverdale")
  dbConnect(RSQLite::SQLite(), "MilesCoverdale_DataB")
}