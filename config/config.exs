# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nlwrocketpay,
  ecto_repos: [Nlwrocketpay.Repo]

# Configures the endpoint
config :nlwrocketpay, NlwrocketpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nls/gy73QlFuEofAuVh6ih1rigCoS06jo/Kkc94GA+w4qFQZXrGDhqftynuHR2rE",
  render_errors: [view: NlwrocketpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Nlwrocketpay.PubSub,
  live_view: [signing_salt: "GPizNfu2"]

config :nlwrocketpay, Nlwrocketpay.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
