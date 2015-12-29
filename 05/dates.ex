defmodule Dates do

  def date_parts d do
    String.split(d, "-") |> Enum.map(&(get_number &1))
  end

  defp get_number n do
    {i, _} = Integer.parse n
    i
  end

end
