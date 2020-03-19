defmodule UniversalServer do
  def server() do
    receive do
      {:become, func} when is_function(func) ->
        func.()
    end
  end
end
