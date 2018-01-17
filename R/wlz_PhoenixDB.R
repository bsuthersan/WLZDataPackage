wlz_PhoenixDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Phoenix")
  dbConnect(RSQLite::SQLite(), "Phoenix_DB")
}