class Prenda < ApplicationRecord # < ActiveRecord 

    enum categoria: {cabeza: 0, torso: 1, piernas: 2, pies: 3}
    enum tipo: {gorro: 0, sombrero: 1, remera: 2, buzo: 3, campera: 4, pantalon: 5, zapatos: 6, zapatillas: 7, ojotas: 8, sandalias: 9}
    enum textura: {algodon: 0, cuero: 1, gabardina: 2, nylon: 3, jean: 4, piel: 5}

end