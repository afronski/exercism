defmodule FreelancerRates do
  @working_hours 8.0
  @working_days 22

  def daily_rate(hourly_rate), do:
    hourly_rate * @working_hours

  def apply_discount(before_discount, discount), do:
    before_discount * ((100 - discount) / 100.0)

  def monthly_rate(hourly_rate, discount), do:
    trunc(Float.ceil(apply_discount(daily_rate(hourly_rate) * @working_days, discount)))

  def days_in_budget(budget, hourly_rate, discount), do:
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
end
