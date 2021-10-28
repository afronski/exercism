sorted_letters <- function(word) {
  paste(sort(unlist(strsplit(tolower(word), ''))), collapse = '')
}

anagram <- function(subject, candidates) {
  subject_letters <- sorted_letters(subject)

  result <- c()
  for(candidate in candidates) {
    candidate_letters = sorted_letters(candidate)

    if (subject_letters == candidate_letters & tolower(subject) != tolower(candidate)) {
      result <- append(result, c(candidate))
    }
  }

  result
}
