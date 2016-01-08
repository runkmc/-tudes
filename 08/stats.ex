defmodule Stats do

  def minimum([h|t]) do
    minimum(t, h)
  end

  def minimum([], candidate) do
    candidate
  end

  def minimum([h|t], candidate) when candidate > h do
    minimum(t, h)
  end

  def minimum([_|t], candidate) do
    minimum(t, candidate)
  end

  def maximum([h|t]) do
    maximum(t, h)
  end

  def maximum([], candidate) do
    candidate
  end

  def maximum([h|t], candidate) when h > candidate do
    maximum(t, h)
  end

  def maximum([_|t], candidate) do
    maximum(t, candidate)
  end

  def range(numbers) do
    [minimum(numbers), maximum(numbers)]
  end

  def mean list do
    (Enum.sum list) / (Enum.count list)
  end

  def stdv list do
    {sum, squares} = List.foldl list, {0, 0}, fn(x, acc) ->
      running_sum = x + elem(acc, 0)
      running_squares = (x * x) + elem(acc, 1)
      {running_sum, running_squares}
    end
      count = Enum.count(list)
      :math.sqrt(((count * squares) - (sum * sum))/(count * (count - 1)))
  end

end
