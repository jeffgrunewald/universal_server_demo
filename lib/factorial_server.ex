defmodule FactorialServer do
  def server() do
    receive do
      {from, number} when is_pid(from) and is_integer(number) ->
        send(from, factorial(number))
        server()
    end
  end

  def factorial(0), do: 1
  def factorial(number) when is_integer(number), do: number * factorial(number - 1)
end
