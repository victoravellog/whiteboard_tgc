class Personaje < ApplicationRecord
  enum habilidad_especial: {
    resistencia_al_fuego: 0, 
    resistencia_al_frío: 1, 
    resistencia_al_veneno: 2, 
    resistencia_a_la_oscuridad: 3, 
    movimiento_acelerado: 4, 
    crecimiento_acelerado: 5, 
    invocación_de_familiar: 6
  }, _prefix: true

  validates :poder, presence: true, :inclusion => 100..1000
  validates :ataque, presence: true, :inclusion => 100..1000
  validates :defensa, presence: true, :inclusion => 100..1000
  validates :carisma, presence: true, :inclusion => 100..1000
  validates :espiritu, presence: true, :inclusion => 100..1000
  validates :habilidad_especial, inclusion: { in: habilidad_especials.keys }


  belongs_to :tipo_personaje
  belongs_to :raza_personaje
  belongs_to :user, optional: true
end
