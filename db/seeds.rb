# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PrendaTipo.create(categoria: 0,  nombre: 1)
PrendaTipo.create(categoria: 2, nombre: 5)
PrendaTipo.create(categoria: 1, nombre: 2)
PrendaTipo.create(categoria: 3, nombre: 6)

Guardarropa.create(nombre: "Guardarropa1")
Guardarropa.create(nombre: "Guardarropa2")


Prenda.create(textura:0, color: "#CC0066", color_secundario: "#CC0066", prenda_tipo_id: 4, guardarropa_id: 1)
Prenda.create(textura:1, color: "#CC0066", color_secundario: "#CC0066", prenda_tipo_id: 1, guardarropa_id: 2)
Prenda.create(textura:2, color: "#CC0066", color_secundario: "#CC0066", prenda_tipo_id: 2, guardarropa_id: 1)
Prenda.create(textura:3, color: "#CC0066", color_secundario: "#CC0066", prenda_tipo_id: 3, guardarropa_id: 2)
Prenda.create(textura:4, color: "#CC0066", color_secundario: "#CC0066", prenda_tipo_id: 2, guardarropa_id: 1)