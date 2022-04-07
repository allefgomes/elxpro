defmodule RaffleTest do
  use ExUnit.Case
  doctest Raffle

  describe "start/0" do
    test "returns `{:ok, []}`" do
      expected_result = {:ok, []}

      result = Raffle.start

      assert expected_result == result
    end
  end

  describe "add_person/2" do
    test "returns `{:ok, ['Fulano']}` when send 'Fulano' as parameter" do
      expected_result = {:ok, ["Fulano"]}
      people = []

      result = Raffle.add_person(people, "Fulano")

      assert expected_result == result
    end

    test "returns `{:ok, ['Fulano']}` when send 'Fulano' as parameter and the list contains 'Fulano' (don't duplicate users)" do
      people = ["Fulano"]
      expected_result = {:ok, ["Fulano"]}

      result = Raffle.add_person(people, "Fulano")

      assert expected_result == result
    end

    test "returns `{:ok, ['Fulano', 'Cicrano']}` when send 'Cicrano' as parameter and the list contains 'Fulano' (returns a new person in list)" do
      expected_result = {:ok, ["Fulano", "Cicrano"]}
      people = ["Fulano"]

      result = Raffle.add_person(people, "Cicrano")

      assert expected_result == result
    end
  end

  describe "draw/1" do
    test "returns `{:ok, 'Fulano'} when called passing ['Fulano'] as parameter" do
      people = ["Fulano"]
      expected_result = "Fulano"

      {:ok, winner_result} = Raffle.draw(people)

      assert(expected_result, winner_result)
    end

    test "returns `{:ok, 'person that contains in list'} when called passing ['Fulano'] as parameter" do
      people = ["Fulano", "Cicrano"]

      {:ok, winner_result} = Raffle.draw(people)

      assert(people |> Enum.any?(&(&1 == winner_result)))
    end

    test "raise an `ArgumentError` with `List is empty!` as message when passing `[]` as parameter" do
      people = []

      assert_raise ArgumentError, "List is empty!", fn -> Raffle.draw(people) end
    end
  end
end
