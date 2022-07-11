parse_phone_number <- function(number_string) {
  all_nums <- gsub('\\D', '', number_string)

  pattern <- '^1?[2-9]\\d{2}[2-9]\\d{6}$'
  if (!grepl(pattern, all_nums)) {
    return(NULL)
  }

  gsub('^1', '', all_nums)
}
