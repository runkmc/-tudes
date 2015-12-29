defmodule AskArea do

  def area do
    shape = get_shape
    case convert_char_to_shape shape do
      {:ok, s}    -> get_dimensions s
      {:error, s} -> IO.puts s
    end
  end

  defp get_shape do
    answer = IO.gets "r)ectangle, t)riangle, or e)llipse: "
    answer |> String.first |> String.upcase
  end

  defp convert_char_to_shape char do
    case char do
      "R" -> {:ok, :rectangle}
      "T" -> {:ok, :triangle}
      "E" -> {:ok, :ellipse}
      _ -> {:error, "Unknown shape"}
    end
  end

  defp get_dimensions :rectangle do
    width = get_number "Width: "
    height = get_number "Height: "
    Geom.area(:rectangle, width, height)
  end

  defp get_dimensions :triangle do
    base = get_number "Base: " 
    height = get_number "Height: " 
    Geom.area(:triangle, base, height)
  end

  defp get_dimensions :ellipse do
    major = get_number "Major radius: " 
    minor = get_number "Minor raduis: " 
    Geom.area(:ellipse, major, minor)
  end

  defp get_number question do
    answer = IO.gets question
    {n, _} = answer |> String.strip |> Integer.parse
    n
  end
end
