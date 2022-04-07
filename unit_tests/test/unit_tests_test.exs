defmodule UnitTestsTest do
  use ExUnit.Case
  doctest UnitTests

  test "greets the world" do
    assert UnitTests.hello() == :world
  end
end
