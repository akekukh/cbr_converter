defmodule CbrConverter.RubEur do
  def start_link() do
    IO.inspect("Starting process RubEur")

    Task.start_link(fn ->
      Process.sleep(1_000_000)
    end)
  end

  def child_spec(_) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, []},
      name: __MODULE__
    }
  end
end
