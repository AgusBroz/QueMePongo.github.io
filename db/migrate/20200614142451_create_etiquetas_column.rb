class CreateEtiquetasColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :atuendos, :estilo, :integer
    add_column :atuendos, :estacion, :integer
    remove_column :atuendos, :lista_etiquetas, :string
  end
end
