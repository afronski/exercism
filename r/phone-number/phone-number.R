parse_phone_number <- function(number_string) {
  regex = '^\\s*\\+?1?\\(?([2-9][0-9]{2})\\)?\\s*\\.?([2-9][0-9]{2})\\-?\\.?\\s*([0-9]{4})\\s*$'
  number = gsub(regex, '\\1\\2\\3', number_string)

  if (nchar(number) != 10) {
    return(NULL)
  }

  number
}
