class Prenda < ApplicationRecord # < ActiveRecord 
    belongs_to :prenda_tipo, required:true
    belongs_to :guardarropa, required:false
    belongs_to :usuario, required:true
    belongs_to :textura, required:true
end