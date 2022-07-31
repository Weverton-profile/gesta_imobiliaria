defmodule GestaoImobiliaria do
  alias GestaoImobiliaria.Navegacao
  use Application

  def start(_,_) do
    main()
    {:ok, self()}
  end

  def main() do
    IO.puts("Bem-vindo a sua gestao imobiliaria!")
    IO.puts("Selecione uma operacao abaixo!")
    IO.puts("1 - Imoveis a venda por tipo")
    IO.puts("2 - Terreno a venda por tamanho")
    IO.puts("3 - Imoveis vendidos por um corretor especifico")
    IO.puts("4 - Imoveis para alugar por bairro")
    IO.puts("5 - Imoveis para alugar com menos de 2 anos de construcao")
    IO.gets("Selecione entre as opcoes de 1 a 5: ")
    |> Integer.parse()
    |> parse_input()
    |> IO.inspect()
    |> Navegacao.escolha()
  end

  def parse_input(:error), do: main()
  def parse_input({num, _}), do: num

end
