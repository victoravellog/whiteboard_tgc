class TipoPersonaje < ApplicationRecord
    validates :descripcion, presence: true
    
    has_many :personajes
end
