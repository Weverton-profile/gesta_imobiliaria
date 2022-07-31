defmodule GestaoImobiliaria.Proprietario do

    defstruct id: nil, nome: nil, cpf: nil

    def dados() do
      [
        %__MODULE__{ id: 1, nome: "Maria", cpf: "123.123.123-11" },
        %__MODULE__{ id: 2, nome: "Luan", cpf: "321.321.321-11" },
        %__MODULE__{ id: 3, nome: "Wesley", cpf: "456.456.456-11" },
        %__MODULE__{ id: 4, nome: "Lianna", cpf: "567.567.567-11" },
        %__MODULE__{ id: 5, nome: "Constantino", cpf: "678.678.678-11" },
        %__MODULE__{ id: 6, nome: "Aldir", cpf: "789.789.789-11" }
      ]
    end
end