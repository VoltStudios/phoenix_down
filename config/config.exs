# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_down, PhoenixDown.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "UfHvAgM7UR8XfmY2m2klesVkDHlX0DUMaRU+iHmdsEjcWFQV5PwWQRe1TBWDHeDE",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixDown.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: false,
  binary_id: true

config :openmaize,
  user_model: PhoenixDown.User,
  repo: PhoenixDown.Repo,
  unique_id: "curp",
  login_dir: "/api"
