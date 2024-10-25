defmodule RevvelTest do
  use ExUnit.Case
  doctest Revvel

  test "greets the world" do
    assert Revvel.hello() == :world
  end
end
