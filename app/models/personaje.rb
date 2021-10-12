class Personaje < ApplicationRecord

  enum habilidad_especial: {
    resistencia_al_fuego: 0, 
    resistencia_al_frío: 1, 
    resistencia_al_veneno: 2, 
    resistencia_a_la_oscuridad: 3, 
    movimiento_acelerado: 4, 
    crecimiento_acelerado: 5, 
    invocación_de_familiar: 6
  }, _prefix: :habilidad

  enum public_status: {
    privado: 0, 
    publico: 1
  }, _suffix: true

  has_one_attached :imagen

  validates :poder, presence: true, :inclusion => 100..1000
  validates :ataque, presence: true, :inclusion => 100..1000
  validates :defensa, presence: true, :inclusion => 100..1000
  validates :carisma, presence: true, :inclusion => 100..1000
  validates :espiritu, presence: true, :inclusion => 100..1000
  validates :nombre, presence: :true, uniqueness:  true
  validates :historia, presence: :true

  validate :puntos_por_personaje_validator


  belongs_to :tipo_personaje
  belongs_to :raza_personaje
  belongs_to :user, optional: true

  extend FriendlyId
  friendly_id :nombre
    
  def puntos_por_personaje_validator
    suma_puntaje = poder+ataque+defensa+carisma+espiritu
    errors.add(:base, "La suma de los puntajes no puede superar los 2000 puntos, el personaje está excedido en #{suma_puntaje-2000} puntos.") if suma_puntaje > 2000
    errors.add(:base, "La suma de los puntajes debe ser exactamente 2000 puntos, el personaje está falto de #{2000-suma_puntaje} puntos.") if suma_puntaje < 2000
  end
  
end
