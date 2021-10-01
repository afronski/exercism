defmodule FreelancerRates do
  @working_hours 8.0
  @billable_days 22

  def daily_rate(hourly_rate), do: hourly_rate * working_hours

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100 |> Float.round(5)
  end

  def monthly_rate(hourly_rate, discount) do
    rate = daily_rate(hourly_rate) * billable_days
    apply_discount(rate, discount) |> Float.ceil(0) |> trunc
  end

  def days_in_budget(budget, hourly_rate, discount) do
    price = daily_rate(hourly_rate) |> apply_discount(discount)
    budget / price |> Float.floor(1)
  end
end
