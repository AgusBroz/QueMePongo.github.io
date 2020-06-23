class AddUsuarioIdToAtuendos < ActiveRecord::Migration[6.0]
    def change
      add_reference :atuendos, :usuario
    end
end
