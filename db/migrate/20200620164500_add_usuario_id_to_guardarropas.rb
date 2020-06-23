class AddUsuarioIdToGuardarropas < ActiveRecord::Migration[6.0]
  def change
    add_reference :guardarropas, :usuario
  end
end
