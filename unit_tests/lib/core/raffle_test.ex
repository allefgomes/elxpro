defmodule Raffle do
  @doc """
    iex> Raffle.start()
    {:ok, []}
  """
  def start do
    {:ok, []}
  end

  @doc """
    iex> Raffle.add_person([], "Fulano")
    {:ok, ["Fulano"]}

    iex> Raffle.add_person(["Fulano"], "Fulano")
    {:ok, ["Fulano"]}

    iex> Raffle.add_person(["Fulano"], "Cicrano")
    {:ok, ["Fulano", "Cicrano"]}

    iex> Raffle.add_person(["Fulano", "Cicrano"], "Maria")
    {:ok, ["Fulano", "Cicrano", "Maria"]}
  """
  def add_person(people, name_person) do
    case check_if_exists?(people, name_person) do
      true ->
        {:ok, people}
      _ ->
        {:ok, people ++ [name_person]}
    end
  end

  @doc """
    iex> Raffle.draw(["Fulano"])
    {:ok, "Fulano"}

    iex> Raffle.draw([])
    ** (ArgumentError) List is empty!
  """
  def draw([]), do: raise ArgumentError, "List is empty!"

  def draw(people) do
    person = Enum.random(people)

    {:ok, person}
  end

  defp check_if_exists?(people, name_person) do
    people
    |> Enum.any?(fn person -> person == name_person end)
  end
end
