defmodule MinimalGraphql.Schemas.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "posts" do
    field(:title, :string)
    field(:body, :string)
    belongs_to(:user, MinimalGraphql.Schemas.User)

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end
end
