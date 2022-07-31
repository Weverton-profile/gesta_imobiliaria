defmodule GestaoImobiliaria do
  alias GestaoImobiliaria.Navegacao
  use Application
  alias GestaoImobiliaria.Rotinas

  def start(_,_) do
    main()
    {:ok, self()}
  end

  def main() do
    # IO.puts("Bem-vindo a sua gestao imobiliaria!")
    # IO.puts("Selecione uma operacao abaixo!")
    # IO.puts("1 - Imoveis a venda por tipo")
    # IO.puts("2 - Terreno a venda por tamanho")
    # IO.puts("3 - Imoveis vendidos por um corretor especifico")
    # IO.puts("4 - Imoveis para alugar por bairro")
    # IO.puts("5 - Imoveis para alugar com menos de 2 anos de construcao")
    # IO.gets("Selecione entre as opcoes de 1 a 5: ")
    # |> Integer.parse()
    # |> parse_input()
    # |> IO.inspect()
    # |> Navegacao.escolha()
    # Rotinas.imoveis_a_venda_por_tipo("APARTAMENTO", Imovel.dados(), Venda.dados())
    # Rotinas.terrenos_a_venda_por_tamanho(Terreno.dados(), Venda.dados(), 800)
    # Rotinas.imoveis_vendidos_por_corretor(Imovel.dados(), "Quemia", Venda.dados())
    # Rotinas.imoveis_para_alugar_por_bairro("dirceu", Imovel.dados(), Aluguel.dados())
    # Rotinas.imoveis_para_alugar_construcao_menor_que_2(Imovel.dados(), Aluguel.dados())
  end

  # def parse_input(:error), do: main()
  # def parse_input({num, _}), do: num

end
