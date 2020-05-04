# FlowTest.Umbrella

1. `mix phx.new --umbrella --live --no-ecto flow_test`
2. `cd flow_test_umbrella`
3. `iex -S mix phx.server`
4. navigate around a bit (like in LiveDashboard)

5. stop server
6. add `{:flow, "~> 1.0"}` to apps/flow_test/mix.exs
7. add simple code using Flow to apps/flow_test/lib/flow_test.ex
