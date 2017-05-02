defmodule Rumbl.UserController do
  @moduledoc false

  use Rumbl.Web, :controller


  def index(conn, _params) do
    users = Repo.all(Rumb.User)

    render conn, "index.html", users: users
  end
end
