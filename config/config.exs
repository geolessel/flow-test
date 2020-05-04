# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config



config :flow_test_web,
  generators: [context_app: :flow_test]

# Configures the endpoint
config :flow_test_web, FlowTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aXXjry5+4eWPiJ7WFoRA6v8nlNbRm71DTo5k4S1PFbeu/h+fLE2ZwGjOffBl6JVB",
  render_errors: [view: FlowTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FlowTest.PubSub,
  live_view: [signing_salt: "NEzq4gj1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
