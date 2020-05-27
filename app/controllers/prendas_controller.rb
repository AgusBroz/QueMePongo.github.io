class PrendasController < ApplicationController

    before_action :set_prenda,only:[:show, :destroy, :update, :edit]
    def index
        @prendas = Prenda.all
    end

    def show
    end
    
    def destroy
        if @prenda.destroy
            redirect_to prendas_path, notice: t(:deleted)
        end
    end 

    def new
        @prenda=Prenda.new
    end

    def create
        @prenda=Prenda.new(prenda_params)
        if @prenda.save
            redirect_to prendas_path,notice: t(:created)
        else
            render new_prenda_path
        end
    end

    def edit
    end

    def update

        if @prenda.update_attributes(prenda_params)
            redirect_to prendas_path, notice: t(:updated)
        else
            render edit_prenda_path
        end
    end

    private
    def prenda_params
       params.require(:prenda).permit(:categoria, :color, :color_secundario, :textura, :tipo)     
    end

    def set_prenda
        @prenda= Prenda.find(params[:id].to_i)
    end
end