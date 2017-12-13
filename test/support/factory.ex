defmodule PhxNewTemplate.Factory do
  use ExMachina.Ecto, repo: PhxNewTemplate.Repo

  use PhxNewTemplate.UserFactory
end
