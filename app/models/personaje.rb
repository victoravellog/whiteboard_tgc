class Personaje < ApplicationRecord
  enum habilidad_especial: {
    "resistencia al fuego" => 0,
    "resistencia al frío" => 1,
    "resistencia al veneno" => 2,
    "resistencia a la oscuridad" => 3,
    "movimiento acelerado" => 4,
    "crecimiento acelerado" => 5,
    "invocación de familiar" => 6
  }, _prefix: true

  validates :poder, presence: true, :inclusion => 100..1000
  validates :ataque, presence: true, :inclusion => 100..1000
  validates :defensa, presence: true, :inclusion => 100..1000
  validates :carisma, presence: true, :inclusion => 100..1000
  validates :espiritu, presence: true, :inclusion => 100..1000
  validates :habilidad_especial, inclusion: { in: habilidad_especials.keys }


  belongs_to :tipo_personaje
  belongs_to :raza_personaje
end
