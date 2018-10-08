defmodule Euler.Problem004 do
  @moduledoc """
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  @doc """
  2数の積で表される回文数の最大値を返却

  ## Examples

      iex> TwoNumbersFactory.create(100..999) |> Euler.Problem004.solve
      906609
  """

  def solve(numbers) when is_list(numbers) do
    numbers
    |> Enum.map(fn {x, y} -> x * y end)
    |> Enum.filter(&(palindrome?(&1)))
    |> Enum.max
  end

  def palindrome?(number) do
    string = Integer.to_string(number)
    string == String.reverse(string)
  end
end

defmodule TwoNumbersFactory do
  @moduledoc """
  2つの数字の組み合わせを作成
  """

  def create(range) do
    Enum.to_list(for x <- range, y <- range, do: {x, y})
  end
end
