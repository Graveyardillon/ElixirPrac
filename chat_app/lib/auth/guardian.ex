defmodule ChatApp.Auth.Guardian do
    use Guardian, opt_app: :chat_app
    alias ChatApp. {Repo, Admin}
    def subject_for_token(resource, _claims) do
        sub = to_string(resource.id)
        {:ok, sub}
    end    
end

    def resource_from_claims(claims) do
        id = claims["sub"]
        admin = Repo.get(Admin, id)
        {:ok, admin}
    end