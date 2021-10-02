defmodule Secrets do
  use Bitwise, only_operators: true

  def secret_add(secret), do: fn(term) -> term + secret end
  def secret_subtract(secret), do: fn(term) -> term - secret end
  def secret_multiply(secret), do: fn(term) -> term * secret end
  def secret_divide(secret) when secret != 0, do: fn(term) -> trunc(term / secret) end
  def secret_and(secret), do: fn(term) -> Bitwise.band(term, secret) end
  def secret_xor(secret), do: fn(term) -> Bitwise.bxor(term, secret) end

  def secret_combine(secret_function1, secret_function2) do
    fn(term) -> term |> secret_function1.() |> secret_function2.() end
  end
end
