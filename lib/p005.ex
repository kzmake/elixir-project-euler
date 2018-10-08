defmodule Euler.Problem005 do
  @moduledoc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  """

  @doc """
  割り切れる数字の中で最小の正の数を返却

  ## Examples

      iex> 1..20 |> Euler.Problem005.solve
      232792560
  """

  def solve(range) do
    range
    |> Enum.reduce(fn x, acc -> lcm(trunc(x), trunc(acc)) end)
    |> trunc
  end

  defp lcm(0, 0), do: 0
  defp lcm(a, b), do: (a * (b)) / Integer.gcd(a, b)
end
