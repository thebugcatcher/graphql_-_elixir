defmodule Products.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :code, :string
      add :description, :text

      timestamps()
    end
  end
end
