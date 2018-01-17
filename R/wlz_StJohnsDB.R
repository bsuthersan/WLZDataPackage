wlz_StJohnsDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/St Johns")
  dbConnect(RSQLite::SQLite(), "StJohns_DB")
}