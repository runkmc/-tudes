defmodule Geom do
  @moduledoc """
  Functions for calculation the area of shapes.
  """

  @doc """
  Calculates the area of a rectangle
  """
  def area(:rectangle, x, y) do
    x * y
  end

  def area(:triangle, x, y) do 
    (x * y) / 2.0
  end

  def area(:ellipse, x, y) do
    :math.pi() * x * y
  end
end

