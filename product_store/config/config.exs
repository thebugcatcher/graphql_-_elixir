# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :products,
  ecto_repos: [Products.Repo]

# Configures the endpoint
config :products, ProductsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+HEDUOI6DGD0o0mGJ9j+u1PEsOwgCwptvEPkCpvS2RRjW0RtroHHzyYckwU8yCay",
  render_errors: [view: ProductsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Products.PubSub,
  live_view: [signing_salt: "BBjZBg/B"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
