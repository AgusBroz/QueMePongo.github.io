class AddUsuarioIdToPrendas < ActiveRecord::Migration[6.0]
  def change
    add_reference :prendas, :usuario
  end
end
