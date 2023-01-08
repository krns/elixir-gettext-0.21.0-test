# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :gettext_test, GettextTestWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: GettextTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GettextTest.PubSub,
  live_view: [signing_salt: "5+C0HpyF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :gettext_test, GettextTestWeb.Gettext, default_locale: "en"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
