defmodule Powers do

  def r(_, n) when n == 0 do
    1
  end

  def r(x, n) when n == 1 do
    x
  end

  def r(x, n) when n > 1 do
    r(x, n, 1)
  end

  def r(x, n) when n < 0 do
    1.0 / r(x, -n)
  end

  defp r(x, n, acc) when n == 0 do
    acc
  end
  
  defp r(x, n, acc) do
    r(x, (n - 1), (x * acc))
  end

end
