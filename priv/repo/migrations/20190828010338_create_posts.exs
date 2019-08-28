defmodule MinimalGraphql.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:user_id, references(:users, on_delete: :delete_all, type: :uuid))
      add(:title, :string)
      add(:body, :string)

      timestamps
    end

    create(unique_index(:posts, [:id]))
    create(index(:posts, [:title]))
    create(index(:posts, [:user_id]))
  end
end
