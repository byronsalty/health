defmodule HealthWeb.FormController do
  use HealthWeb, :controller

  def form(conn, _params) do
    render(conn, "index.html")
  end
  def submit(conn, _params) do
    pass = (conn.params["breastfed"] == "Y")
      && (conn.params["fullterm"] == "Y")
      && (conn.params["postdischarge"] == "Y")
      && (conn.params["recent"] == "Y")
      && (conn.params["english"] == "Y")
      && (conn.params["country"] == "Y")
    if pass do
      render(conn, "accepted.html")
    else
      render(conn, "rejected.html")
    end
  end
end
