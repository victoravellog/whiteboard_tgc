class PersonajeRazaPersonajeSerializer
  include JSONAPI::Serializer
  attributes :descripcion

  def attributes
    attrs.delete(:id)
  end
end
