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

    def create
        @prenda = Prenda.new
        @prenda.categoria=params[:categoria]
  
        if @prenda.save
           redirect_to :action => 'index'
        end
     end

    def new
    end

end