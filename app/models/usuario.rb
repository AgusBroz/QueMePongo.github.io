class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :guardarropas
  has_many :atuendos
  belongs_to :rol, required:false
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
