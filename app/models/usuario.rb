class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :guardarropas
  has_many :atuendos

  
  belongs_to :rol, required: false
  before_create :asignar_rol
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def es_admin? 
    rol.nombre == "administrador"
  end

  def asignar_rol
    self.rol_id=Rol.find_by(nombre: 0).id
  end
   
  def validar_permisos
    raise "?" unless es_admin?
  end
end
