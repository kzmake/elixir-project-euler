defmodule Euler.Problem003 do
  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
  """

  @doc """
  素因数分解を実施し、素因数のうち最大を返却

  ## Examples

      iex> 600851475143 |> Euler.Problem003.solve
      6857
  """

  def solve(num) when is_integer(num) do
    Factorizer.factorize(num)
    |> Enum.max
  end
end

defmodule Factorizer do
  @moduledoc """
  素因数分解
  """

  def factorize(1, _), do: []
  def factorize(n, i \\ 2) do
    if rem(n, i) == 0 do
      [i] ++ factorize(div(n, i), i)
    else
      factorize(n, i + 1)
    end
  end
end
