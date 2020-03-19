# universal_server_demo
An Elixir implementation of Joe Armstrong's "Universal Server"

To run, cd into the project root and run the commend `iex -S mix`

Once inside the IEx shell, start the universal server and capture the process
ID of the server instance by calling `pid = spawn(fn -> UniversalServer.server() end)`

You now have a "universal server" that can become anything you want it to.
Initialize it to a factorial server by calling `send(pid, {:become, fn -> FactorialServer.server() end})`

Then query your factorial server by sending the message `send(pid, {self(), 50})` and then
drop into a receive block to retrieve the response from your shell process's mailbox like so:
```
receive do
  x -> x
end
```
