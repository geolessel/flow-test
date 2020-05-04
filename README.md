# FlowTest.Umbrella

1. `mix phx.new --umbrella --live --no-ecto flow_test`
2. `cd flow_test_umbrella`
3. `iex -S mix phx.server`
4. navigate around a bit (like in LiveDashboard)

5. stop server
6. add `{:flow, "~> 1.0"}` to apps/flow_test/mix.exs
7. add simple code using Flow (`FlowTest.flow_yo/1`) to apps/flow_test/lib/flow_test.ex

8. use `FlowTest.flow_yo/1` in `FlowTestWeb.PageLive.mount/3`
9. `iex -S mix phx.server` (even though this failed, I wanted to keep it in my history in case it matters)
10. `mix deps.get`
11. `iex -S mix phx.server`
12. navigate to http://localhost:4000/
13. 💥

---

My machine:

```shell
> elixir --version
Erlang/OTP 22 [erts-10.7.1] [source] [64-bit] [smp:16:16] [ds:16:16:10] [async-threads:1] [hipe] [dtrace]

Elixir 1.10.2 (compiled with Erlang/OTP 21)
```
