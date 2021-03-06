# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for third-
# party users, it should be done in your mix.exs file.

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]

config :wwwest, 
    server_port: 8888, 
    server_timeout: 20000, # timeout for all requests
    memo_ttl: 60000, # timeout for memorize json encode and decode
    trx_ttl: 5000, # timeout for all trx transactions
    callback_module: Statex.Wwwest, # here are handlers for requests
    basic_auth: %{login: "login", password: "password"} # | :none

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
