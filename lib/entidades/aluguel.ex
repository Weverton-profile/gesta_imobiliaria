defmodule GestaoImobiliaria.Aluguel do
    alias GestaoImobiliaria.{Corretor, Cliente, Imovel, Proprietario}
  
    defstruct id: nil, agencia: nil, data_final: nil, corretor: nil, cliente: nil, imovel: nil, proprietario: nil
  
    def dados() do
      data_final =  NaiveDateTime.new(2021, 9, 21, 12, 30, 12)
  
      corretores = Corretor.dados()
      clientes = Cliente.dados()
      proprietarios = Proprietario.dados()
      imoveis = Imovel.dados()
  
      [
        %__MODULE__{id: 1, agencia: "nossa", data_final: data_final, corretor: Enum.at(corretores, 0), cliente: Enum.at(clientes, 4), imovel: Enum.at(imoveis, 3) , proprietario: Enum.at(proprietarios, 2)},
        %__MODULE__{id: 2, agencia: "nossa", data_final: data_final, corretor: Enum.at(corretores, 2), cliente: Enum.at(clientes, 3), imovel: Enum.at(imoveis, 2) , proprietario: Enum.at(proprietarios, 4)},
        %__MODULE__{id: 3, agencia: "nossa", data_final: data_final, corretor: Enum.at(corretores, 1), cliente: Enum.at(clientes, 2), imovel: Enum.at(imoveis, 5) , proprietario: Enum.at(proprietarios, 0)},
        %__MODULE__{id: 4, agencia: "nossa", data_final: data_final, corretor: Enum.at(corretores, 2), cliente: Enum.at(clientes, 1), imovel: Enum.at(imoveis, 0) , proprietario: Enum.at(proprietarios, 1)}
    ]
    end
  end