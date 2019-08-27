defmodule MinimalGraphqlTest do
  use ExUnit.Case
  doctest MinimalGraphql

  test "greets the world" do
    assert MinimalGraphql.hello() == :world
  end
end
