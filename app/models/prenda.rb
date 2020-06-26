class Prenda < ApplicationRecord # < ActiveRecord 
    belongs_to :prenda_tipo, required:true
    belongs_to :guardarropa, required:false
    belongs_to :usuario, required:true

    enum textura: [:algodon, :cuero, :gabardina, :nylon, :jean, :piel]
end