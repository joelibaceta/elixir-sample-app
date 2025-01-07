defmodule DemoElixir.CLI do
  def start do
    IO.puts("Iniciando la app demo...")
    loop()
  end

  defp loop do
    IO.puts("Trabajando dentro del contenedor (Elixir) ...")
    :timer.sleep(5000)
    loop()
  end
end