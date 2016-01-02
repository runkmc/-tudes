defmodule Teeth do

  def pocket_depths do
    [[0], [2,2,1,2,2,1], [3,1,2,3,2,3],
      [3,1,3,2,1,2], [3,2,3,2,2,1], [2,3,1,2,1,1],
      [3,1,3,2,3,2], [3,3,2,1,3,1], [4,3,3,2,3,3],
      [3,1,1,3,2,2], [4,3,4,3,2,3], [2,3,1,3,2,2],
      [1,2,1,1,3,2], [1,2,2,3,2,3], [1,3,2,1,3,3], [0],
      [3,2,3,1,1,2], [2,2,1,1,3,2], [2,1,1,1,1,2],
      [3,3,2,1,1,3], [3,1,3,2,3,2], [3,3,1,2,3,3],
      [1,2,2,3,3,3], [2,2,3,2,3,3], [2,2,2,4,3,4],
      [3,4,3,3,3,4], [1,1,2,3,1,2], [2,2,3,2,1,3],
      [3,4,2,4,4,3], [3,3,2,1,2,3], [2,2,2,2,3,3],
      [3,2,3,2,3,2]]
  end

  def alert(toothlist) do
    Enum.reverse(alert(toothlist, 0, []))
  end

  defp alert([], _, warninglist) do
    warninglist
  end

  defp alert([tooth|rest_of_teeth], count, warninglist) do
    count = count + 1
    cond do
      Stats.maximum(tooth) >= 4 ->
        alert(rest_of_teeth, count, [count|warninglist])
      true ->
        alert(rest_of_teeth, count, warninglist)
    end
  end

end
