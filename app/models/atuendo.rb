class Atuendo < ApplicationRecord
    belongs_to :prenda_cabeza, class_name: "Prenda" , required:false
    belongs_to :prenda_torso, class_name: "Prenda" , required:false
    belongs_to :prenda_piernas, class_name: "Prenda" , required:false
    belongs_to :prenda_pies, class_name: "Prenda" , required:false
    belongs_to :usuario
    #has_many   :prendas
    belongs_to :guardarropa, required:true

    enum estilo: [:formal, :informal]
    enum estacion: [:verano, :primavera, :invierno, :otoño]
    enum puntaje: [:Nefasto, :Malo, :Normal, :"Muy Bueno", :Excelente]
end