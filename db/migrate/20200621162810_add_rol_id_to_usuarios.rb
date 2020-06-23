class AddRolIdToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_reference :usuarios, :rol, default:0
  end
end
