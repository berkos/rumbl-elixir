defmodule Rumbl.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :username, :string, null: false
      add :password_hash, :string

      timestamps
    end

    create unique_index(:users, [:username])
  end
end

Repo.insert(%User{name: "Jos", username: "josevalim", password_hash: "password" })

Repo.insert(%User{name: "Bruce", username: "redrapids", password_hash: "password" })
Repo.insert(%User{name: "Chris", username: "cmccord", password_hash: "password" })
