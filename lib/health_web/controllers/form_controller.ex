defmodule HealthWeb.FormController do
  use HealthWeb, :controller

  def form(conn, _params) do
    render(conn, "index.html")
  end
  def submit(conn, _params) do
    render(conn, "index.html")
  end
end
