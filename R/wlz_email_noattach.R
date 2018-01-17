wlz_email_noattach <- function(recipient, subject, body) {
  library(gmailr)
  gmail_auth()
  new <- mime() %>%
    to(recipient) %>%
    from("bsuthersan@westlondonzone.org") %>%
    subject(subject) %>%
    text_body(body)
  message <- create_draft(new)
  send_draft(message)
}

