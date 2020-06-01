class Prenda < ApplicationRecord # < ActiveRecord 
    belongs_to :prenda_tipo
    belongs_to :guardarropa
    
    enum textura: {algodon: 0, cuero: 1, gabardina: 2, nylon: 3, jean: 4, piel: 5}
end