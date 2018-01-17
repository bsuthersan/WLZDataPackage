wlz_Year1SurveyDB <- function() {
  setwd("/Users/bridgetsuthersan/Google Drive/WLZ Shared Drive/WLZ Admin (HR, IT, Office, Finance)/DONT USE/Year 1 cohort data/WLZ Data Collection Survey Data")
  dbConnect(RSQLite::SQLite(), "Survey_DB")
}
