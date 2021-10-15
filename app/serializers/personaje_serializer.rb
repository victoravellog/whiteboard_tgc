class PersonajeSerializer
  include JSONAPI::Serializer
  attributes :nombre, :historia, :poder, :ataque, :defensa, :carisma, :espiritu, :habilidad_especial

  has_one :raza_personaje, serializer: RazaPersonajeSerializer
  has_one :tipo_personaje, serializer: TipoPersonajeSerializer

end
