defmodule GestaoImobiliaria.Navegacao do
    alias GestaoImobiliaria.Rotinas
    alias GestaoImobiliaria.{Imovel, Terreno, Cliente, Vendedor, Venda, Aluguel}

    def escolha(num) do
        case num do
            1 -> Rotinas.imoveis_a_venda_por_tipo("APARTAMENTO", Imovel.dados(), Venda.dados())
            2 -> Rotinas.terrenos_a_venda_por_tamanho(Terreno.dados(), Venda.dados(), 800)
            3 -> Rotinas.imoveis_vendidos_por_corretor(Imovel.dados(), "Quemia", Venda.dados())
            4 -> Rotinas.imoveis_para_alugar_por_bairro("dirceu", Imovel.dados(), Aluguel.dados())
            5 -> Rotinas.imoveis_para_alugar_construcao_menor_que_2(Imovel.dados(), Aluguel.dados())
        end 
    end

end