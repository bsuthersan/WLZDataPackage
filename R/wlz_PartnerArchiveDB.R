wlz_PartnerArchiveDB <- function(x) {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Partner Data System/Master Databases")
  dbConnect(RSQLite::SQLite(), "Partner_Archive_DB")
}