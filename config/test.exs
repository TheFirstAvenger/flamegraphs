import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :flamegraphs, FlamegraphsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+wxm2zM7TV+vQrMSGGv4xlYJ+aMiw+WNUQnCgBk7Uc15i+5yCbkMUU1CdYbHTVU7",
  server: false

# In test we don't send emails.
config :flamegraphs, Flamegraphs.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime