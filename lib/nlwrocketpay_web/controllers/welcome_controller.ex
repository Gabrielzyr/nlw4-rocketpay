defmodule NlwrocketpayWeb.WelcomeController do
  use NlwrocketpayWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the Rocketpay api")
  end
end
