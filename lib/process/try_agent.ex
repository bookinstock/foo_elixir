
defmodule Foo.Process.TryAgent.Counter do
  use Agent

  def start_link(state)do
    Agent.start_link(fn -> state end, name: __MODULE__)

  end

  def val() do
    Agent.get(__MODULE__, fn e -> e end)
  end

  def incr()do
    Agent.update(__MODULE__, fn e -> e + 1 end)
  end
end
