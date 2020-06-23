class GuardarropasController < ApplicationController

    before_action :set_guardarropa,only:[:show, :destroy, :update, :edit]

    def index
        @guardarropas = Guardarropa.where(usuario_id: current_usuario.id)
    end

    def new
        @guardarropa=Guardarropa.new
    end
    
    def create
        @guardarropa=Guardarropa.new(guardarropas_params)
        @guardarropa.usuario= current_usuario
        if @guardarropa.save
            redirect_to guardarropas_path,notice: t(:created)
        else
            redirect_to new_guardarropa_path
        end
    end

    def show
        #@prendas= Prenda.all.select{|p| p.guardarropa_id == params[:id].to_i}
        if(@guardarropa)
        @prendas=Prenda.where(guardarropa_id: @guardarropa.id)
        end
    end
    
    def edit
    end

    def destroy
        @prendas=Prenda.where(guardarropa_id: @guardarropa.id)
        @atuendos=@guardarropa.atuendos
        @prendas.each do |p|
            p.guardarropa_id= nil; 
            p.save!
        end 
        @atuendos.each do |a|
            a.destroy!
        end
        
        if @guardarropa.destroy
            redirect_to guardarropas_path, notice: t(:deleted)
        end
    end 

    def update
        if @guardarropa.update_attributes(guardarropas_params)
            redirect_to guardarropas_path, notice: t(:updated)
        else
            redirect_to edit_guardarropa_path
        end
    end


    private
    def guardarropas_params
       params.require(:guardarropa).permit(:nombre)     
    end

    def set_guardarropa
        @guardarropa= Guardarropa.find_by(id: params[:id].to_i, usuario_id: current_usuario.id)
    end
end