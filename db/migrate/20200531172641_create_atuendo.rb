class CreateAtuendo < ActiveRecord::Migration[6.0]
  def change
    create_table :atuendos do |t|
      t.references :prenda_torso
      t.references :prenda_piernas
      t.references :prenda_cabeza
      t.references :prenda_pies
      t.string :lista_etiquetas
      t.integer :puntaje
    end
  end
end
