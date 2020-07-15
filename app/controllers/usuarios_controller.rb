class UsuariosController < ApplicationController
    def index
        @usuarios=Usuario.all.paginate(page: params[:page], per_page: 6)
    end
end