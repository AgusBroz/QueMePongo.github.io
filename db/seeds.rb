# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PrendaTipo.create(categoria: 0, nombre:  0)
PrendaTipo.create(categoria: 0, nombre:  1)
PrendaTipo.create(categoria: 1, nombre: 10)
PrendaTipo.create(categoria: 1, nombre: 11)
PrendaTipo.create(categoria: 1, nombre: 12)
PrendaTipo.create(categoria: 1, nombre: 13)
PrendaTipo.create(categoria: 1, nombre: 14)
PrendaTipo.create(categoria: 1, nombre: 15)
PrendaTipo.create(categoria: 1, nombre: 16)
PrendaTipo.create(categoria: 1, nombre:  2)
PrendaTipo.create(categoria: 1, nombre:  3)
PrendaTipo.create(categoria: 1, nombre:  4)
PrendaTipo.create(categoria: 2, nombre: 17)
PrendaTipo.create(categoria: 2, nombre: 18)
PrendaTipo.create(categoria: 2, nombre: 19)
PrendaTipo.create(categoria: 2, nombre: 20)
PrendaTipo.create(categoria: 2, nombre:  5)
PrendaTipo.create(categoria: 3, nombre:  6)
PrendaTipo.create(categoria: 3, nombre:  7)
PrendaTipo.create(categoria: 3, nombre:  8)
PrendaTipo.create(categoria: 3, nombre:  9)
PrendaTipo.create(categoria: 3, nombre: 21)
PrendaTipo.create(categoria: 3, nombre: 22)


Guardarropa.create(nombre: "Guardarropa1")
Guardarropa.create(nombre: "Guardarropa2")

Prenda.create(nombre: "Gorra Nike",             textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 1,  guardarropa_id: 1)
Prenda.create(nombre: "Sombrero Hawaiano",      textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 2,  guardarropa_id: 2)
Prenda.create(nombre: "Chomba Fachera",         textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 3,  guardarropa_id: 1)
Prenda.create(nombre: "Camisa Dior",            textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 4,  guardarropa_id: 2)
Prenda.create(nombre: "Jean Lee",               textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 14, guardarropa_id: 1)
Prenda.create(nombre: "Short de la Academia",   textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 15, guardarropa_id: 2)
Prenda.create(nombre: "Zapatillas Convers",     textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 19, guardarropa_id: 1)
Prenda.create(nombre: "Crocs",                  textura:3, color: '#CC0066', color_secundario: '#CC0066', prenda_tipo_id: 23, guardarropa_id: 2)

Atuendo.create(prenda_cabeza_id: 1, prenda_torso_id: 3, prenda_piernas_id: 5, prenda_pies_id: 7, guardarropa_id: 1)
Atuendo.create(prenda_cabeza_id: 2, prenda_torso_id: 4, prenda_piernas_id: 6, prenda_pies_id: 8, guardarropa_id: 2)