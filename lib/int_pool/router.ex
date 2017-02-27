defmodule IntPool.Router do
  use Plug.Router

  plug :match
  plug Plug.Head
  plug Plug.RequestId
  plug Plug.Logger
  plug :dispatch

  get "/pools" do
    send_resp(conn, 200, ~s({"error":true,"details":"not_implemented"}))
  end

  post "/pools" do
    send_resp(conn, 200, ~s({"error":true,"details":"not_implemented"}))
  end

  get "/pools/:pool_id/locks" do
    send_resp(conn, 200, ~s({"error":true,"details":"not_implemented"}))
  end

  post "/pools/:pool_id/locks/:lock_id/acquire" do
    send_resp(conn, 200, ~s({"error":true,"details":"not_implemented"}))
  end

  post "/pools/:pool_id/locks/:lock_id/release" do
    send_resp(conn, 200, ~s({"error":true,"details":"not_implemented"}))
  end

  match _ do
    send_resp(conn, 404, ~s({"error":true}))
  end
end
