use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :crowdfunding_api, CrowdfundingApi.Endpoint,
  http: [port: 3000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


# Watch static and templates for browser reloading.
config :crowdfunding_api, CrowdfundingApi.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :crowdfunding_api, CrowdfundingApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "crowdfunding_api_dev",
  hostname: "localhost",
  pool_size: 10

# Finally import the config/dev.secret.exs
# which should be versioned separately.
import_config "dev.secret.exs"
