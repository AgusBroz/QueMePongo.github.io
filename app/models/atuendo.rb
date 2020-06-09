class Atuendo < ApplicationRecord
    belongs_to :prenda_cabeza, class_name: "Prenda" , required:false
    belongs_to :prenda_torso, class_name: "Prenda" , required:false
    belongs_to :prenda_piernas, class_name: "Prenda" , required:false
    belongs_to :prenda_pies, class_name: "Prenda" , required:false
    #has_many   :prendas
    belongs_to :guardarropa, required:true
end