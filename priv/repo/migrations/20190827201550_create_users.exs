defmodule MinimalGraphql.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:name, :string)
      add(:email, :string)
      add(:age, :integer)

      timestamps
    end

    create(unique_index(:users, [:id]))
    create(index(:users, [:name]))
    create(index(:users, [:email]))
  end
end
