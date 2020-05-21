class ChangeTypeTextureColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :prendas, :textura, :integer
    change_column :prendas, :tipo, :integer 
  end
end
