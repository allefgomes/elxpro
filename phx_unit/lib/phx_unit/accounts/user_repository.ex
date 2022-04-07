defmodule PhxUnit.Accounts.UserRepository do
  alias PhxUnit.Repo
  alias PhxUnit.User

  def list_users do
    Repo.all(User)
  end
end
