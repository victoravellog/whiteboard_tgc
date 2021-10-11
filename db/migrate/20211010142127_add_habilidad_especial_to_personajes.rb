class AddHabilidadEspecialToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :habilidad_especial, :integer, default: 0
  end
end
