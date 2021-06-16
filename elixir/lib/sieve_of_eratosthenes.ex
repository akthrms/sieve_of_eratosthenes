defmodule SieveOfEratosthenes do
  def sieve_of_eratosthenes(n) when n < 2 do
    raise "n is more than 2"
  end

  def sieve_of_eratosthenes(n) do
    2..n
    |> Enum.to_list()
    |> sieve(n)
  end

  defp sieve([x | xs] = list, n) do
    if :math.pow(x, 2) > n do
      list
    else
      [x | sieve(for(y <- xs, rem(y, x) != 0, do: y), n)]
    end
  end
end
