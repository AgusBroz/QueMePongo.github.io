class PrendaTipo < ApplicationRecord
    has_one :prenda
    enum tipo: {gorro: 0, sombrero: 1, remera: 2, buzo: 3, campera: 4, pantalon: 5, zapatos: 6, zapatillas: 7, ojotas: 8, sandalias: 9}
    enum categoria: {cabeza: 0, torso: 1, piernas: 2, pies: 3}
end