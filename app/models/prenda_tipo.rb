class PrendaTipo < ApplicationRecord
    has_one :prenda
    
    enum nombre: [:gorro, :sombrero, :remera, :buzo, :campera, :pantalon, :zapatos, :zapatillas, :ojotas, :sandalias]
    enum categoria: [:cabeza, :torso, :piernas, :pies]
end