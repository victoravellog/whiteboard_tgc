class AddHistoriaImagenToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :historia, :text
    add_column :personajes, :imagen, :string
  end
end
