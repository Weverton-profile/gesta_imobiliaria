defmodule GestaoImobiliaria.Venda do
    alias GestaoImobiliaria.{Corretor, Cliente, Proprietario, Imovel, Terreno}

    defstruct agencia: nil, data: nil, corretor: nil, proprietario: nil, cliente: nil, produto: nil

    def dados() do
        terrenos = Terreno.dados()
        corretores = Corretor.dados()
        cliente = Cliente.dados()
        proprietario = Proprietario.dados()
        imoveis = Imovel.dados()
        [
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 0), cliente: Enum.at(cliente, 5), proprietario: Enum.at(proprietario, 0), produto: Enum.at(terrenos, 0) },
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 1), cliente: Enum.at(cliente, 4), proprietario: Enum.at(proprietario, 1), produto: Enum.at(imoveis, 3) },
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 2), cliente: Enum.at(cliente, 3), proprietario: Enum.at(proprietario, 2), produto: Enum.at(imoveis, 4) },
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 0), cliente: Enum.at(cliente, 2), proprietario: Enum.at(proprietario, 3), produto: Enum.at(terrenos, 3) },
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 1), cliente: Enum.at(cliente, 1), proprietario: Enum.at(proprietario, 4), produto: Enum.at(imoveis, 5) },
          %__MODULE__{ agencia: "nossa", data: Date.utc_today(), corretor: Enum.at(corretores, 2), cliente: Enum.at(cliente, 0), proprietario: Enum.at(proprietario, 5), produto: Enum.at(imoveis, 10) }
        ]
    end

end