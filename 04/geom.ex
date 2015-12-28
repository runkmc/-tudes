defmodule Geom do
  @moduledoc """
  Functions for calculation the area of shapes.
  """

  @doc """
  Calculates the area of a rectangle
  """
  def area(shape, len, width) when len >= 0 and width >= 0 do
    case shape do
      :rectangle -> len * width
      :triangle  -> (len * width) / 2.0
      :ellipse   -> :math.pi() * len * width
    end
  end
end

