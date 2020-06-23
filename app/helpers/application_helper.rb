module ApplicationHelper
    def ordenable(columna, atributo=nil)
        atributo ||= columna.titleize
        direccion = columna==ordenar_columna && ordenar_direccion == "asc" ? "desc" : "asc"
        link_to atributo, :columna => columna, :direccion => direccion
    end
end
