module ApplicationHelper
    
    def ordenable(columna, atributo=nil)
        atributo ||= columna.titleize
        direccion = ordenar_direccion == "asc" ? "desc" : "asc"
        clase_css = ordenar_direccion == "asc" ?  "fas fa-sort-down" : "fas fa-sort-up" 
        link_to atributo, {:columna => columna, :direccion => direccion, :estilo=>params[:estilo], :estacion=>params[:estacion]},{:class=> clase_css}
    end
end
