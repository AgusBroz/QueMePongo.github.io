class PrendasController < ApplicationController

    before_action :set_prenda,only:[:show, :destroy, :update, :edit]
    def index
        redirect_to guardarropas_path
    end

    def show
    end
    
    def destroy
        pId=@prenda.guardarropa_id
        if @prenda.destroy
            redirect_to guardarropa_path(pId) ,notice: t(:deleted)
        end
    end 

    def new
        @prenda=Prenda.new
    end

    def create
        @prenda=Prenda.new(prenda_params)
        @prenda.prenda_tipo=PrendaTipo.find(prenda_params[:prenda_tipo_id])
        @prenda.guardarropa=Guardarropa.find(prenda_params[:guardarropa_id])
        if @prenda.save
            redirect_to guardarropa_path(prenda_params[:guardarropa_id]) ,notice: t(:created)
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
       params.require(:prenda).permit(:color, :color_secundario, :textura,:prenda_tipo_id, :guardarropa_id  )     
    end

    def set_prenda
        @prenda= Prenda.find(params[:id].to_i)
    end


end