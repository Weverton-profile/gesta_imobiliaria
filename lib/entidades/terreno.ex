defmodule GestaoImobiliaria.Terreno do

    defstruct id: nil, tamanho: nil, zona: nil

    @type t(id, tamanho, zona) :: %__MODULE__{id: id, tamanho: tamanho, zona: zona}
  
    @type t :: %__MODULE__{id: integer, tamanho: integer, zona: String.t}
  
    def dados() do
      [
        %__MODULE__{ id: 1, tamanho: 800, zona: "RURAL" },
        %__MODULE__{ id: 2, tamanho: 800, zona: "RURAL" },
        %__MODULE__{ id: 3, tamanho: 400, zona: "URBANA" },
        %__MODULE__{ id: 4, tamanho: 550, zona: "URBANA" }
      ]
    end
end