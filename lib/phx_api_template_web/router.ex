defmodule PhxApiTemplateWeb.Router do
  use PhxApiTemplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxApiTemplateWeb do
    pipe_through :api
  end
end
