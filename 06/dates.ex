defmodule Dates do

  def date_parts d do
    String.split(d, "-") |> Enum.map(&(get_number &1))
  end

  defp get_number n do
    {i, _} = Integer.parse n
    i
  end

  def julian(datestring) do
    [month, day, year] = date_parts datestring
    days_per_month = [31,28,31,30,31,30,31,30,31,30,31]
    days_through_month = Enum.take(days_per_month, (month - 1)) |> Enum.sum
    day + days_through_month + leap_year(is_leap_year(year))
  end

  defp is_leap_year year do
    (rem(year,4) == 0 and rem(year,100) != 100) or (rem(year,400) == 0)
  end

  defp leap_year(true) do
    1
  end

  defp leap_year(_) do
    0
  end

end
