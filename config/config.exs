# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :phx_new_template, :cors,
  origins: "http://127.0.0.1:8080",
  allow_headers: ~w[accept content-type authorization origin],
  max_age: 600

config :phx_new_template,
  ecto_repos: [PhxNewTemplate.Repo]

config :phx_new_template, PhxNewTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6gKmLRsx2+NC0WFdrNA2QRHXJSnXuJgC2VESaWFesh6LEwhZSMYb0GxGrtps4Uly",
  render_errors: [view: PhxNewTemplateWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhxNewTemplate.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
