defmodule GettextTestWeb.PageController do
  use GettextTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
