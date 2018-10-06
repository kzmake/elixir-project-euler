defmodule Euler.Problem001 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  3 か 5 の倍数になっている数字の合計を計算

  ## Examples

      iex> 1..999 |> Euler.Problem001.solve
      233168
  """
  def solve(nums) do
    nums
    |> Enum.filter(&(multiples_of_three?(&1) or multiples_of_five?(&1)))
    |> Enum.sum
  end

  # multiples of 3
  defp multiples_of_three?(num), do: rem(num, 3) == 0
  # multiples of 5
  defp multiples_of_five?(num), do: rem(num, 5) == 0
end
