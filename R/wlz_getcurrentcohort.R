wlz_getcurrentcohort <- function(...) {
library(RForcecom)
library(tidyverse)
username <- "bsuthersan@westlondonzone.org"
password <- "Bridget!19873u7irhOpdXSeqAO3p4SAwuyQY3"
instanceURL <- "https://eu5.salesforce.com/"
session <- rforcecom.login(username, password, instanceURL)
soqulQuery <- soqulQuery <- "SELECT Name, First_name__c, Last_name__c, Form__c, Gender__c, Consent_form__c, Need__c, Anchor__c FROM Participant__c"
students <- rforcecom.query(session, soqulQuery, queryAll=TRUE)
colnames(students) <- gsub("__c","",colnames(students))
students <- students %>%
  rename(WLZID=Name) %>%
  unite(Name, First_name, Last_name, sep=" ") %>%
  filter(Consent_form=="true") %>%
  select(-Consent_form) %>%
  rename(Year=Form,
         Gen=Gender)
soqulQuery <- "SELECT Name, ID FROM Account"
anchor <- rforcecom.query(session, soqulQuery, queryAll=TRUE)
anchor <- anchor %>%
  rename(Anchor=Id,
         School=Name)
students <- students %>%
  left_join(anchor, by = "Anchor") %>%
  select(-Anchor) %>%
  filter(stringr::str_detect(School, ...)) 
}