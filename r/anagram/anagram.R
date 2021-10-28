letters <- function(s) {
  sapply(strsplit(tolower(s), ''), function(v) paste(sort(v), collapse = ''))
}

anagram <- function(subject, candidates) {
  anagrams = candidates[letters(subject) == letters(candidates) & tolower(subject) != tolower(candidates)]

  if (length(anagrams) > 0) {
    anagrams
  } else {
    c()
  }
}
