class Guardarropa < ApplicationRecord
    has_many :prendas
    has_many :atuendos
    belongs_to :usuario, required:true
end 