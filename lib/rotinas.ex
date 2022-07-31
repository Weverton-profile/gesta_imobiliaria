defmodule GestaoImobiliaria.Rotinas do
    alias GestaoImobiliaria
    alias GestaoImobiliaria.{Imovel, Terreno, Cliente, Corretor, Vendedor, Venda, Aluguel}

    def imoveis_a_venda_por_tipo(tipo, imoveis, vendas) do
        filtro = fn imovel ->
            imovel.tipo == tipo and esta_a_venda?(imovel, vendas)
        end
      
        imoveis = Enum.filter(imoveis, filtro)

        imprimi_informações(imoveis, length(imoveis), 0, 1)
    end
    
    def terrenos_a_venda_por_tamanho(terrenos, vendas, tamanho) do
        filtro = fn terreno ->
            terreno.tamanho == tamanho and esta_a_venda?(terreno, vendas)
        end
      
        terrenos = Enum.filter(terrenos, filtro)
        imprimi_informações(terrenos, length(terrenos), 0, 2)
    end

    def imoveis_vendidos_por_corretor(imoveis, corretor, vendas) do
        vendas_do_corretor = fn venda ->
            venda.corretor.nome == corretor
        end
      
        pegue_o_produto = fn venda ->
            venda.produto
        end
      
        filtre_por_imoveis = fn produto ->
            produto.__struct__ == Imovel
        end
      
        vendas = Enum.filter(vendas, vendas_do_corretor)
        vendas = Enum.map(vendas, pegue_o_produto)
        vendas = Enum.filter(vendas, filtre_por_imoveis)

        imprimi_informações(vendas, length(vendas), 0, 3)
    end   

    def imoveis_para_alugar_por_bairro(bairro, imoveis, alugueis) do
        filtro = fn imovel ->
            imovel.bairro == bairro and esta_para_alugar?(imovel, alugueis)
          end
      
        imoveis =  Enum.filter(imoveis, filtro)

        imprimi_informações(imoveis, length(imoveis), 0, 4)
    end
    
    def imoveis_para_alugar_construcao_menor_que_2(imoveis, alugueis) do
        filtro = fn imovel ->
            esta_para_alugar?(imovel, alugueis) and Date.utc_today.year - imovel.ano < 2
        end
      
        imoveis = Enum.filter(imoveis, filtro)
        imprimi_informações(imoveis, length(imoveis), 0, 5)
    end
    
    def imprimi_informações(array, tamanho, indice, chamado) do
        if tamanho > 0 do
            case chamado do
                1 ->
                    casa = Enum.at(array, indice)
                    IO.puts("#{casa.id}, #{casa.area}, #{casa.ano}, #{casa.bairro}, #{casa.preco}, #{casa.tipo}")
                    imprimi_informações(array, tamanho - 1, indice + 1, 1)
                2 ->
                    terreno = Enum.at(array, indice)
                    IO.puts("#{terreno.id}, #{terreno.tamanho}, #{terreno.zona}")
                    imprimi_informações(array, tamanho - 1, indice + 1, 2)
                3 ->
                    imoveis_vendidos = Enum.at(array, indice)
                    IO.puts("#{imoveis_vendidos.id}, #{imoveis_vendidos.area}, #{imoveis_vendidos.ano}, #{imoveis_vendidos.bairro}, #{imoveis_vendidos.preco}, #{imoveis_vendidos.tipo}")
                    imprimi_informações(array, tamanho - 1, indice + 1, 3)
                4 ->
                    alugar = Enum.at(array, indice)
                    IO.puts("#{alugar.id}, #{alugar.area}, #{alugar.ano}, #{alugar.bairro}, #{alugar.preco}, #{alugar.tipo}")
                    imprimi_informações(array, tamanho - 1, indice + 1, 4)   
                5 ->
                    casa = Enum.at(array, indice)
                    IO.puts("#{casa.id}, #{casa.area}, #{casa.ano}, #{casa.bairro}, #{casa.preco}, #{casa.tipo}")
                    imprimi_informações(array, tamanho - 1, indice + 1, 5)                
            end
        end
    end

    def esta_a_venda?(produto, vendas) do
        produto_em_venda = fn venda ->
          venda.produto == produto
        end
    
        esta_vendido = vendas
        |> Enum.any?(produto_em_venda)
    
        !esta_vendido
    end
    
    def esta_para_alugar?(imovel, alugueis) do
        imovel_para_alugar = fn aluguel ->
          imovel == aluguel.imovel and aluguel.data_final < NaiveDateTime.utc_now
        end
    
        esta_alugado = alugueis
        |> Enum.any?(imovel_para_alugar)
    
        !esta_alugado
    end
end