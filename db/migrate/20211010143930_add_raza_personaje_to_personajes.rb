class AddRazaPersonajeToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_reference :personajes, :raza_personaje, null: false, foreign_key: true
  end
end
