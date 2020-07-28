class UsuariosController < ApplicationController
    def index
        if(validado?)
            @usuarios=Usuario.all.paginate(page: params[:page], per_page: 6)
        else
            raise ApplicationController::NotAuthorized
        end
    end

    private
    def validado?
        current_usuario.es_admin?
    end
end