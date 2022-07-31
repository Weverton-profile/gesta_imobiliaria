defmodule GestaoImobiliaria.Imovel do
    defstruct id: nil, ano: nil, area: nil, bairro: nil, preco: nil, tipo: nil

    def dados() do
        [
            %__MODULE__{ id: 1, area: 400,  ano: 2008, bairro: "ilhotas", preco: 124000, tipo: "CASA" },
            %__MODULE__{ id: 2, area: 300, ano: 2009, bairro: "dirceu", preco: 50000, tipo: "APARTAMENTO" },
            %__MODULE__{ id: 3, area: 400, ano: 2021, bairro: "promorar", preco: 300000, tipo: "CASA" },
            %__MODULE__{ id: 4, area: 400,  ano: 2020, bairro: "Sao Joao", preco: 150000, tipo: "CASA" },
            %__MODULE__{ id: 5, area: 500,  ano: 2008, bairro: "Campestre", preco: 30000, tipo: "APARTAMENTO" },
            %__MODULE__{ id: 6, area: 400, ano: 2009, bairro: "Dirceu II", preco: 75000, tipo: "APARTAMENTO" },
            %__MODULE__{ id: 7, area: 400, ano: 2021, bairro: "Picarreira", preco: 80000, tipo: "CASA" },
            %__MODULE__{ id: 8, area: 800,  ano: 2020, bairro: "Bairro Noivos", preco: 20000, tipo: "APARTAMENTO" },
            %__MODULE__{ id: 9, area: 400,  ano: 2008, bairro: "Parque Universitario", preco: 95000, tipo: "CASA" },
            %__MODULE__{ id: 10, area: 700, ano: 2009, bairro: "Campestre", preco: 32000, tipo: "APARTAMENTO" },
            %__MODULE__{ id: 11, area: 400, ano: 2021, bairro: "Morada do Sol", preco: 50000, tipo: "CASA" },
            %__MODULE__{ id: 12, area: 400,  ano: 2020, bairro: "ilhotas", preco: 88000, tipo: "CASA" }
        ]
    end

end