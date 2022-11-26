import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :health, HealthWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "7j6H0VOeyQTuHsDR3aJTNi952J50vcvZPowPkilqYNFnqw3bOF0EAgKIHBb/BFPx",
  server: false

# In test we don't send emails.
config :health, Health.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
