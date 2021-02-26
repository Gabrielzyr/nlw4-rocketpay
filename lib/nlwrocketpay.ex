defmodule Nlwrocketpay do
  alias Nlwrocketpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
