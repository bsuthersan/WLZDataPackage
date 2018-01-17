wlz_OldOakDB <- function(x) {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Old Oak")
  dbConnect(RSQLite::SQLite(), "Old_Oak_MasterDB")
}

