class CreatePrendas < ActiveRecord::Migration[6.0]
  def change
    create_table :prendas do |t|
      t.string "categoria"
      t.string "color"
      t.string "color_secundario"
      t.string "textura"
      t.string "tipo"
    end
  end
end
