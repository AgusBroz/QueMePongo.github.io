class PrendasController < ApplicationController

    def index
        @prendas = Prenda.all
    end

    def show
        @prenda= Prenda.find(params[:id].to_i)
    end
    
    def destroy
        Prenda.destroy(params[:id].to_i)
    end 

    def new
        @prenda=Prenda.new
    end

    def create
        @prenda=Prenda.new(prenda_params)
        if @prenda.save
            redirect_to 'index',notice=> "La prenda se creó exitosamente"
        else
            render "new"
        end
    end
    def prenda_params
    params.require(:prenda).permit(:categoria, :color, :color_secundario, :textura, :tipo)
    end
    def edit

    end

    def update

    end
end