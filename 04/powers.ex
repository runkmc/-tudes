defmodule Powers do

  def r(_, n) when n == 0 do
    1
  end

  def r(x, 1) do
    x
  end

  def r(x, n) when n > 1 do
    r(x, n, 1)
  end

  def r(x, n) when n < 0 do
    1.0 / r(x, -n)
  end

  defp r(_, 0, acc) do
    acc
  end
  
  defp r(x, n, acc) do
    r(x, (n - 1), (x * acc))
  end

  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  defp nth_root(x, n, estimate) do
    IO.puts "Current guess is #{estimate}."
    f = r(estimate, n) - x
    f_prime = n * r(estimate, n - 1)
    next = estimate - (f / f_prime)
    change = abs(next - estimate)
    cond do
      change < 1.0e-8 -> next
      true            -> nth_root(x, n, next)
    end
  end

end
