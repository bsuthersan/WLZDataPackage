wlz_WLFreeSchoolDB <- function(x) {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/WL Free School")
  dbConnect(RSQLite::SQLite(), "WLFreeSchool_DB")
}