class AtuendosController < ApplicationController

    before_action :set_guardarropa

    def index
        @atuendos=Atuendo.where(guardarropa_id: @guardarropa.id)
    end

    def show
        @atuendo= Atuendo.find(params[:id].to_i)
    end
    
    def destroy
        aId=Atuendo.find(params[:id].to_i).id
        @atuendo= Atuendo.find(params[:id].to_i)
        if @atuendo.destroy
            redirect_to guardarropa_atuendos_path(:guardarropa_id => @guardarropa.id), notice: t(:deleted)
        end
    end 

    def new
        @atuendo=Atuendo.new
    end

    def create
       # @atuendo=Atuendo.new(atuendo_params)
       # @atuendo.guardarropa_id=params[:guardarropa_id]
        redirect_to guardarropa_atuendos_path,notice: t(:created) if @guardarropa.atuendos << Atuendo.new(atuendo_params) 
        #if @atuendo.save
            
        #else
        #    redirect_to new_guardarropa_atuendo_path
        #end
    end

    def edit
        @atuendo= Atuendo.find(params[:id].to_i)
    end

    def update
        @atuendo= Atuendo.find(params[:id].to_i)
        if @atuendo.update_attributes(atuendo_params)
            redirect_to guardarropa_atuendos_path, notice: t(:updated)
        else
            render edit_atuendo_path
        end
    end

    private
    def atuendo_params
       params.require(:atuendo).permit(:prenda_cabeza_id, :prenda_torso_id, :prenda_piernas_id, :prenda_pies_id, :puntaje, :lista_etiquetas)     
    end

    def set_atuendo
        @atuendo= Atuendo.find(params[:id].to_i)
    end

    def set_guardarropa
        @guardarropa= Guardarropa.find(params[:guardarropa_id])
    end

end