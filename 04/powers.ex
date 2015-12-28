defmodule Powers do

  def r(_, n) when n == 0 do
    1
  end

  def r(x, n) when n == 1 do
    x
  end

  def r(x, n) when n > 1 do
    x * r(x, (n - 1))
  end

  def r(x, n) when n < 0 do
    1.0 / r(x, -n)
  end

end
