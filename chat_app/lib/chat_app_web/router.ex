defmodule ChatAppWeb.Router do
  use ChatAppWeb, :router

  pipeline :login_session do
    plug ChatApp.Auth.LoginSessionPipeline
  end

  pipeline :ensure_auth do
    plug ChatApp.Auth.EnsureAuthPipeline
  end

  pipeline :ensure_not_auth do
    plug ChatApp.Auth.EnsureNotAuthPipeline
  end

  scope "/admin", ChatAppWeb.Admin, as: :admin do
    #ログインしている場合のみ表示できるページなので :ensure_auth を含む
    pipe_through[:browser, :login_session, :ensure_auth]
    get "/", ArticleController, :index, as: :root
    delete "/logout", SessionController, :delete, as: :logout
  end

  scope "/admin", ChatAppWeb.Admin, as: :admin do
    #ログインしていない場合のみ表示できるページなので :ensure_not_auth を含む
    pipe_through [:browser :login_session, :ensure_not_auth]
    get "/login", SessionController, :new, as: :login
    post "/login", SessionController, :create as: :login
  end

  scope "/", ChatAppWeb do
    #ログインしていればログインしているユーザー情報を扱いたいので :login_session を含む
    pipe_through [:browser :login_session]
    resource "/", ArticleController, only: [:index]
    
  end


  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChatAppWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChatAppWeb do
  #   pipe_through :api
  # end
end