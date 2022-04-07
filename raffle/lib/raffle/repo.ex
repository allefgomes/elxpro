defmodule Raffle.Repo do
  use Ecto.Repo,
    otp_app: :raffle,
    adapter: Ecto.Adapters.Postgres
end
