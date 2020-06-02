class ChangeColumnPrendaTipo < ActiveRecord::Migration[6.0]
  def change
    change_column :prenda_tipos, :nombre, :integer
  end
end
