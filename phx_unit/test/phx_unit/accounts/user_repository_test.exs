defmodule PhxUnit.Accounts.UserRepositoryTest do
  use PhxUnit.DataCase

  import PhxUnit.Factory
  alias PhxUnit.Accounts.UserRepository

  describe "list_users/0" do
    # 1..100 |> Enum.map(fn (number) ->
      # test "returns `[]` when get users and in database don't have users #{number}" do
      test "returns `[]` when get users and in database don't have users" do
        expected_response = []

        users_result = UserRepository.list_users()

        assert expected_response == users_result
      end

      # test "returns `[%User{}]` when get users and in database have users #{number}" do
      test "returns `[%User{}]` when get users and in database have users" do
        user = insert(:user)
        expected_response = [user]

        users_result = UserRepository.list_users()

        assert expected_response == users_result
      end
    # end)
  end
end
