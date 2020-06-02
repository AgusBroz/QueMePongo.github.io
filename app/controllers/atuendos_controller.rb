class AtuendosController < ApplicationController

    def index
        @atuendos = Atuendo.all
    end

    def show
    end
    
    def destroy
        if @atuendo.destroy
            redirect_to atuendos_path, notice: t(:deleted)
        end
    end 

    def new
        @atuendo=Atuendo.new
    end

    def create
        @atuendo=Atuendo.new(atuendo_params)
        if @atuendo.save
            redirect_to atuendos_path,notice: t(:created)
        else
            render new_atuendo_path
        end
    end

    def edit
    end

    def update

        if @atuendo.update_attributes(atuendo_params)
            redirect_to atuendos_path, notice: t(:updated)
        else
            render edit_atuendo_path
        end
    end

    private
    def atuendo_params
       params.require(:atuendo).permit(:prenda_cabeza, :prenda_torso, :prenda_piernas, :piernas_pies, :puntaje, :lista_etiquetas)     
    end

    def set_atuendo
        @atuendo= Atuendo.find(params[:id].to_i)
    end


end