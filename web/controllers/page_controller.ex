defmodule Codecollab.PageController do
  use Codecollab.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
