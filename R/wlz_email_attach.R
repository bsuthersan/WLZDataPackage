wlz_email_attach <- function(recipient, subject, body, attachment) {
  library(gmailr)
  new <- mime() %>%
    to(recipient) %>%
    from("bsuthersan@westlondonzone.org") %>%
    subject(subject) %>%
    html_body(body) %>%
    attach_part(body) %>%
    attach_file(attachment)
  message <- gmailr::create_draft(new)
  gmailr::send_draft(message)
}


