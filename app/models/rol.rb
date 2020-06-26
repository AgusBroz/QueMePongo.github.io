class Rol < ApplicationRecord
    enum nombre: [:normal, :administrador]
    has_many :usuarios
end
