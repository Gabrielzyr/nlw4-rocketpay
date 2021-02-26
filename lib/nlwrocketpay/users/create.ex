defmodule Nlwrocketpay.Users.Create do
  alias Nlwrocketpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
