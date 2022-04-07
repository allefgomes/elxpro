defmodule RaffleWeb.RaffleLive do
  use RaffleWeb, :live_view
  alias RaffleWeb.RaffleView
  alias Phoenix.View

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(changeset: %{ names: "" })}
  end

  @impl true
  def render(assings) do
    View.render(RaffleView, "index.html", assings)
  end

  @impl true
  def handle_event("create", %{"people" => _people}, socket) do
    [true, false]
    |> Enum.random()
    |> case do
      false ->
        {:noreply, socket |> put_flash(:info, "Teste")}

      true ->
        {:noreply, socket |> put_flash(:error, "Teste Erro")}
    end
  end
end
