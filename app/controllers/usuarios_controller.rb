class UsuariosController < ApplicationController
    before_action :validar_permisos_de_usuario
    def index
        @usuarios=Usuario.all
    end
    def validar_permisos_de_usuario
        current_usuario.validar_permisos
    end
end