defmodule ChatUserauthWeb.Router do
  use ChatUserauthWeb, :router

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
  
  pipeline :auth do
    plug ChatUserauth.Accounts.Pipeline
  end
  pipeline :ensure_auth do
    plug Guardian.Plug.EnsureAuthenticated
  end

  scope "/", ChatUserauthWeb do
    pipe_through [:browser, :auth]

    get "/", PageController, :index
    get "/signin", UserController, :new
    post "/signin", UserController, :create
    get "/login", SessionController, :new
    post "/login", SessionController, :create
    delete "/logout", SessionController, :delete
  end
    
    scope "/", ChatUserauthWeb do
      pipe_through [:browser, :auth, :ensure_auth]
      resources "/users", UserController, except: [:new, :create]
      resources "/articles", ArticleController
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChatUserauthWeb do
  #   pipe_through :api
  # end
end
