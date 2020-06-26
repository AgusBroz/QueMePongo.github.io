class CreateRols < ActiveRecord::Migration[6.0]
  def change
    create_table :rols do |t|
      t.integer :nombre
    end
  end
end
