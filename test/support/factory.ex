defmodule PhxApiTemplate.Factory do
  use ExMachina.Ecto, repo: PhxApiTemplate.Repo

  use PhxApiTemplate.UserFactory
end
