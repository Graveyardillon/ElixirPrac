#認証情報を扱えるパイプライン 
defmodule ChatApp.Auth.LoginSessionPipeline do
    use Guardian.Plug.Pipeline, otp_app: :ChatApp
    plug Guardian.Plug.VerifySession, claims: %{"typ" => "access"}
    plug Guardian.Plug.Loadresource, allow_blank:true
end