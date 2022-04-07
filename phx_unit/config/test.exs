import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phx_unit, PhxUnit.Repo,
  username: "postgres",
  password: "postgres",
  database: "phx_unit_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  port: 5435,
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_unit, PhxUnitWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "h2oZUryTBK1u9wC3OBNQg0XJejIvl6k7358yoHAbxpl/FH6uEyF5Gsz7vm93Disg",
  server: false

# In test we don't send emails.
config :phx_unit, PhxUnit.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
