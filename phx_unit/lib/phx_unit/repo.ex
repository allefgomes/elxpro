defmodule PhxUnit.Repo do
  use Ecto.Repo,
    otp_app: :phx_unit,
    adapter: Ecto.Adapters.Postgres
end
