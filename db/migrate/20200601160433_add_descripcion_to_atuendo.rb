class AddDescripcionToAtuendo < ActiveRecord::Migration[6.0]
  def change
    add_column :atuendos, :descripcion, :string
  end
end
