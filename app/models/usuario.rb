class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :guardarropas
  has_many :atuendos

  
  after_initialize :asignar_rol
  belongs_to :rol
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def es_admin? 
    rol.nombre == "administrador"
  end

  def asignar_rol
    self.rol ||= Rol.find_by(nombre: "normal") 
  end

    
  #def validar_permisos
   # es_admin?
  #end

end
