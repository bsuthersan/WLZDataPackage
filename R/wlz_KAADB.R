wlz_KAADB <- function(x) {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/KAA")
  dbConnect(RSQLite::SQLite(), "KAA_DB")
}
