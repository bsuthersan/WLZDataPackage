wlz_FullAnchorsDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Full Anchor Data")
  dbConnect(RSQLite::SQLite(), "FullAnchors_DB")
}