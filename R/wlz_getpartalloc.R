wlz_getpartalloc <- function(...) {
  library(RForcecom)
  library(tidyverse)
  username <- "bsuthersan@westlondonzone.org"
  password <- "Bridget!19873u7irhOpdXSeqAO3p4SAwuyQY3"
  instanceURL <- "https://eu5.salesforce.com/"
  session <- rforcecom.login(username, password, instanceURL)
 soqulQuery <- soqulQuery <- "SELECT Name, First_name__c, Last_name__c, Anchor__c, Act_Tutoring__c, Albert_and_Friends__c, Beanstalk__c, Clement_James__c, Debate_Mate__c, Doorstop__c, Fearless_Futures__c, Hammersmith_C_G__c, Home_Start_Westminster__c, Leap_Confronting_Conflict__c, London_Sports_Trust__c, Move_Fly_LDN__c,  Move_Jump_LDN__c, Place2Be__c, QPR_cc__c, Real_Action__c, Team_Up__c, TalentEd__c, Therapy_and_nurture__c, Urbanwise__c, Tomorrows_people__c, Tutors_United__c, West_London_Action_For_Children__c, Working_With_Men__c, WC_Advent_Play__c FROM Participant__c"
  students <- rforcecom.query(session, soqulQuery, queryAll=TRUE)
  colnames(students) <- gsub("__c","",colnames(students))
  students <- students %>%
    rename(WLZID=Name) %>%
    unite(Name, First_name, Last_name, sep=" ")
  soqulQuery <- "SELECT Name, ID FROM Account"
  anchor <- rforcecom.query(session, soqulQuery, queryAll=TRUE)
  anchor <- anchor %>%
    rename(Anchor=Id,
           School=Name)
  students <- students %>%
    left_join(anchor, by = "Anchor") %>%
    select(-Anchor) %>%
    filter(stringr::str_detect(School, ...))
  ind <- apply(students, 2, function(students) all(is.na(students)))
  students <- students[ ,!ind]
  return(students) 
}