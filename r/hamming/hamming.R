hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)) {
    throw('Strands must have the same length')
  }

  if (strand1 == '' & strand2 == '') {
    return(0)
  }

  strand1Chars = strsplit(strand1, '')
  strand2Chars = strsplit(strand2, '')

  result = mapply(function(x, y) x != y, strand1Chars, strand2Chars)
  length(result[result == TRUE])
}
