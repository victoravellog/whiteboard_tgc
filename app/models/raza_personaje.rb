class RazaPersonaje < ApplicationRecord
    validates :descripcion, presence: true
    
    has_many :personajes
end
