defmodule PhxUnit.Factory do
  # with Ecto
  use ExMachina.Ecto, repo: PhxUnit.Repo

  def user_factory do
    %PhxUnit.User{
      name: sequence(:name, &"Allef #{&1}"),
      age: sequence(:age, &(&1))
    }
  end
end
