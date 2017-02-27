defmodule IntPool.Config do
  def http_port do
    env_http_port = (System.get_env("PORT") || "3000") |> String.to_integer
    Application.get_env(:int_pool, :http_port, env_http_port)
  end
end
