defmodule Foo.Process.TryAgent.CounterTest do
  use ExUnit.Case

  test "new" do
    {is_ok, _} = Foo.Process.TryAgent.Counter.start_link 0
    assert is_ok == :ok
  end

  test "val" do
    {:ok, _} = Foo.Process.TryAgent.Counter.start_link 1

    val = Foo.Process.TryAgent.Counter.val

    assert val == 1
  end

  test "incr" do
    {:ok, _} = Foo.Process.TryAgent.Counter.start_link 0

    Foo.Process.TryAgent.Counter.incr

    Foo.Process.TryAgent.Counter.incr

    val = Foo.Process.TryAgent.Counter.val

    assert val == 2
  end
end
