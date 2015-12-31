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

end
