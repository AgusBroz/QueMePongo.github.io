class AddNombreColumnToPrendas < ActiveRecord::Migration[6.0]
  def change
   add_column :prendas, :nombre, :string
  end
end
