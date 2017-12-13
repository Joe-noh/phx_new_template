defmodule PhxNewTemplateWeb.Router do
  use PhxNewTemplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxNewTemplateWeb do
    pipe_through :api
  end
end
