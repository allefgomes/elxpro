defmodule RaffleWeb.RaffleLiveTest do
  use RaffleWeb.ConnCase
  import Phoenix.LiveViewTest

  test "load page", %{conn: conn} do
    {:ok, view, html} = live(conn, Routes.raffle_path(conn, :index))

    assert html =~ "<h1>Buscar</h1>"
    assert render(view) =~ "Buscar"
  end

  # describe "handle_event 'create'" do
  #   test "", %{conn: conn} do
  #     {:ok, view, _html} = live(conn, "/")

  #     {_, map_response} =
  #       view
  #       |> element("form")
  #       |> render_submit(%{people: %{ names: "Fulano, Cicrano, Beltrano"}})

  #     # assert mapa_to_check_redirect[:to] == "/"

  #     assert true
  #   end
  # end
end
