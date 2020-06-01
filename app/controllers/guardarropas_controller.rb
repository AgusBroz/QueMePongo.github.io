class GuardarropasController < ApplicationController

    before_action :set_guardarropa,only:[ :destroy, :update, :edit]

    def index
        @guardarropas = Guardarropa.all
    end

    def new
        @guardarropa=Guardarropa.new
    end
    
    def create
        @guardarropa=Guardarropa.new(guardarropas_params)
        if @guardarropa.save
            redirect_to guardarropas_path,notice: t(:created)
        else
            render new_guardarropas_path
        end
    end

    def show
    end

    def edit
    end

    def destroy
        if @guardarropa.destroy
            redirect_to guardarropas_path, notice: t(:deleted)
        end
    end 

    def update

        if @guardarropa.update_attributes(guardarropas_params)
            redirect_to guardarropas_path, notice: t(:updated)
        else
            render edit_guardarropa_path
        end
    end


    private
    def guardarropas_params
       params.require(:guardarropa).permit(:nombre)     
    end

    def set_guardarropa
        @guardarropa= Guardarropa.find(params[:id].to_i)
    end
end