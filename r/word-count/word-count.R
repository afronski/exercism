word_count <- function(input) {
  sanitized <- trimws(gsub('\\s{2,}', ' ', gsub('[^ \'a-z0-9]', '', tolower(input))))
  as.list(table(unlist(strsplit(sanitized,' '))))
}
