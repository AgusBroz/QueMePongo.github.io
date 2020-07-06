class CreatePrendas < ActiveRecord::Migration[6.0]
  def change
    create_table :prendas do |t|
      t.integer "categoria"
      t.string "color"
      t.string "color_secundario"
      t.integer "textura"
      t.integer "tipo"
    end
  end
end
