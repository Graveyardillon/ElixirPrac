defmodule Chatauth.Blog.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :content, :string
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
