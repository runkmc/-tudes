defmodule Geom do
  @moduledoc """
  Functions for calculation the area of shapes.
  """

  @doc """
  Calculates the area of a rectangle
  """
  def area {shape, length, width} do
    area shape, length, width
  end

  defp area(:rectangle, x, y) when x >= 0 and y >= 0 do
    x * y
  end

  defp area(:triangle, x, y) when x >= 0 and y >= 0 do 
    (x * y) / 2.0
  end

  defp area(:ellipse, x, y) when x >= 0 and y >= 0 do
    :math.pi() * x * y
  end

  defp area(_, _, _) do
    0
  end
end

