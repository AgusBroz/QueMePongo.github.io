class SetDefaultRol < ActiveRecord::Migration[6.0]
  def change
    change_column :usuarios, :rol_id, :integer, default: 0
  end
end
