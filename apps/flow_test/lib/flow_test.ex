defmodule FlowTest do
  @moduledoc """
  FlowTest keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def flow_yo(list \\ [1, 2, 3]) do
    list
    |> Flow.from_enumerable()
    |> Flow.map(&IO.inspect(&1 * 2, label: "inside a flow"))
    |> Flow.run()
  end
end
