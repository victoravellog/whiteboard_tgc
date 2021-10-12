class AddNombreToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :nombre, :string, unique: true
  end
end
