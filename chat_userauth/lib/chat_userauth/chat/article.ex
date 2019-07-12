defmodule ChatUserauth.Chat.Article do
  use Ecto.Schema
  import Ecto.Changeset
  alias ChatUserauth.Accounts.User

  schema "articles" do
    field :content, :string
    field :title, :string
    field :user_id, :id

    belongs_to :users, User
    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
