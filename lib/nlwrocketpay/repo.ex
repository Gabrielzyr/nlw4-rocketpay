defmodule Nlwrocketpay.Repo do
  use Ecto.Repo,
    otp_app: :nlwrocketpay,
    adapter: Ecto.Adapters.Postgres
end
