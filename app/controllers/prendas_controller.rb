class PrendasController < ApplicationController

    def index
        @prendas = Prenda.all
    end

    def show
        @prenda= Prenda.find(params[:id].to_i)
    end
    
    def destroy
        Prenda.destroy(params[:id].to_i)
        if @prenda.destroy
        redirect_to "index", notice => "La prenda se elimino"
        end
    end 

    def new
        @prenda=Prenda.new
    end

    def create
        @prenda=Prenda.new(prenda_params)
        if @prenda.save
            redirect_to 'index',flash[:notice]=> "La prenda se creó exitosamente"
        else
            render "new"
        end
    end
    def edit
        @prenda = Prenda.find (params[:id].to_i)
    end

    def update
        @prenda = Prenda.find(params[:id].to_i)

        if @prenda.update_attributes(prenda_params)
            redirect_to "index", flash[:notice] => "La prenda se modifico exitosamente"

        else
            render ":edit"
        end
    end

    private
    def prenda_params
       params.require(:prenda).permit(:categoria, :color, :color_secundario, :textura, :tipo)     
    end
end