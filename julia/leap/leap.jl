"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
  divisible(n) = year % n == 0
  divisible(4) && !divisible(100) || divisible(400)
end

