rotate <- function(text, key) {
  if (key == 0) {
    return(text)
  }

  old <- paste(letters, LETTERS, collapse = '', sep = '')
  new <- paste(substr(old, 2 * key + 1, 52), substr(old, 1, 2 * key), sep = '')

  chartr(old, new, text)
}
