hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)) {
    stop("Strands must be of equal length")
  } else {
    sum(charToRaw(strand1) != charToRaw(strand2))
  }
}
