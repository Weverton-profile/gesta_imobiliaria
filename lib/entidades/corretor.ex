defmodule GestaoImobiliaria.Corretor do

    defstruct codigo: nil, nome: nil, agencia: nil, salario: nil

    def dados() do
      [
        %__MODULE__{ codigo: 1, nome: "Weverton", agencia: "nossa", salario: 9600 },
        %__MODULE__{ codigo: 2, nome: "Quemia", agencia: "nossa", salario: 8000 },
        %__MODULE__{ codigo: 3, nome: "Juscelino", agencia: "nossa", salario: 7800 }
      ]
    end

end