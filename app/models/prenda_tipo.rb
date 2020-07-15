class PrendaTipo < ApplicationRecord
    has_one :prenda
    
    enum nombre: [:gorro, :sombrero, :remera, :buzo, :campera, :jogging, :zapatos, :zapatillas, :ojotas, :sandalias, :chomba, :camisa, :suéter, :polera, :chaleco, :musculosa, 
    :vestido, :pollera, :jean, :short, :bermuda, :tacones, :crocs ]
    
    enum categoria: [:cabeza, :torso, :piernas, :pies]
end