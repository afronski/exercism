defmodule BirdCount do
  def today([]), do: nil
  def today([h | _tail]), do: h

  def increment_day_count([]), do: [1]
  def increment_day_count([h | tail]), do: [ h + 1 | tail ]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list), do: has_day_without_birds?(list, 0) > 0

  defp has_day_without_birds?([], empty_days), do: empty_days
  defp has_day_without_birds?([h | tail], empty_days) when h == 0, do: has_day_without_birds?(tail, empty_days + 1)
  defp has_day_without_birds?([_h | tail], empty_days), do: has_day_without_birds?(tail, empty_days)

  def total(list), do: total(list, 0)

  defp total([], acc), do: acc
  defp total([h | tail], acc), do: total(tail, acc + h)

  def busy_days([]), do: 0
  def busy_days(list), do: busy_days(list, 0)

  defp busy_days([], busy_days), do: busy_days
  defp busy_days([h | tail], busy_days) when h >= 5, do: busy_days(tail, busy_days + 1)
  defp busy_days([_h | tail], busy_days), do: busy_days(tail, busy_days)
end
