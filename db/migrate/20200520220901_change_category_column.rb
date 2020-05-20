class ChangeCategoryColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :prendas, :categoria, :integer
  end
end
