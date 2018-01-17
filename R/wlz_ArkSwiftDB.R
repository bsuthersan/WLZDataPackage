wlz_ArkSwiftDB <- function(x) {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Cohort and identification/Year 2 cohort data/Master Databases/Ark Swift")
  dbConnect(RSQLite::SQLite(), "ArkSwift_DataB")
}
