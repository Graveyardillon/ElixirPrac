defmodule Chatauth.Auth.Guardian do
  use Guardian, otp_app: :my_app
  alias Chatauth.{Repo, Admin}

  # ユーザーが識別できる情報を返す
  def subject_for_token(resource, _claims) do
    sub = to_string(resource.id)

    {:ok, sub}
  end

  def resource_from_claims(claims) do
    id = claims["sub"]
    admin = Repo.get(Admin, id)

    {:ok, admin}
  end
end
