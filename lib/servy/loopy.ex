# Exercise

defmodule Recurse do
  def sum([head | tail], total) do
    IO.puts("Head: #{head} Tail: #{inspect(tail)}")
    sum(tail, total + head)
  end

  def sum([], total), do: total

  def triple(list) do
    triple(list, [])
  end

  def triple([head | tail], acc) do
    triple(tail, [head * 3 | acc])
  end

  def triple([], acc) do
    acc |> Enum.reverse()
  end
end
