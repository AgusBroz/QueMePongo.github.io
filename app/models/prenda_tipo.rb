class PrendaTipo < ApplicationRecord
    has_one :prenda
    enum categoria: {cabeza: 0, torso: 1, piernas: 2, pies: 3}
end