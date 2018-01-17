wlz_ReferenceDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Databases")
  dbConnect(RSQLite::SQLite(), "Reference_DataB")
}