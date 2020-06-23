class PrendasController < ApplicationController

    before_action :set_prenda,only:[:show, :destroy, :update, :edit]
    
    def index
        @prendas = Prenda.where(guardarropa_id: nil, usuario_id: current_usuario)
    end

    def show
    end
    
    def destroy
        pId=@prenda.guardarropa_id

        if @prenda.destroy
            if pId!=nil
                redirect_to guardarropa_path(pId) ,notice: t(:deleted) 
            else
                redirect_to prendas_path                
            end
        end
    end 

    def new
        if(params[:guardarropa_id])
            @guardarropa=Guardarropa.find(params[:guardarropa_id]) #        ¡poner validacion aquí!
        end
        @prenda=Prenda.new
    end

    def create
        @prenda=Prenda.new(prenda_params)
        @prenda.prenda_tipo=PrendaTipo.find(prenda_params[:prenda_tipo_id]) 
        @prenda.usuario= current_usuario
        if(prenda_params[:guardarropa_id]) #poner verificacion en el #new y no aqui en el create ¿vió?
        @prenda.guardarropa=Guardarropa.find(prenda_params[:guardarropa_id]) 
            if @prenda.save
                redirect_to guardarropa_path(prenda_params[:guardarropa_id]) ,notice: t(:created)
            else
                render new_prenda_path
            end
        end
    end

    def edit
    end

    def update

        if prenda_params[:guardarropa_id] && @prenda.update_attributes(prenda_params)
            redirect_to guardarropa_path(prenda_params[:guardarropa_id]), notice: t(:updated)
        else
            redirect_to edit_prenda_path
        end
    end

    private
    def prenda_params
       params.require(:prenda).permit(:nombre, :color, :color_secundario, :textura, :prenda_tipo_id, :guardarropa_id)     
    end

    def set_prenda
        @prenda= Prenda.find(params[:id].to_i)
    end


end