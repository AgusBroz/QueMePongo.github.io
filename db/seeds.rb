# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Guardarropa.create(nombre:"Guardarropa 1")
PrendaTipo.create(nombre: "Remera",categoria:2)
PrendaTipo.create(nombre: "Pantalon",categoria:1)
Prenda.create(guardarropa_id: 1, prenda_tipo_id:1, textura:1,color:"#000",color_secundario:"#fff")
Prenda.create(guardarropa_id: 1, prenda_tipo_id:1, textura:1,color:"#000",color_secundario:"#fff")

*+