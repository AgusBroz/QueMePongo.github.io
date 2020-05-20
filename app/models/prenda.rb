class Prenda < ApplicationRecord # < ActiveRecord 

    enum categoria:[:cabeza, :torso, :piernas, :pies]

end