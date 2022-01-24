defmodule CbrConverter do
  use Application

  @moduledoc """
  Documentation for `CbrConverter`.
  """

  @impl true
  def start(_type, _args) do
    # Although we don't use the supervisor name below directly,
    # it can be useful when debugging or introspecting the system.
    CbrConverter.Supervisor.start_link(name: CbrConverter.Supervisor)
  end
end
