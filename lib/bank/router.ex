defmodule Bank.Router do
  use Commanded.Commands.Router

  alias Bank.{Account, Commands}

  dispatch(
    [
      Commands.CreateAccount,
      Commands.AddAmount
    ],
    to: Account,
    identity: :account_id
  )
end
