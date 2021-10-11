json.extract! personaje, :id, :poder, :ataque, :defensa, :carisma, :espiritu, :habilidad_especial_id, :created_at, :updated_at
json.url personaje_url(personaje, format: :json)
