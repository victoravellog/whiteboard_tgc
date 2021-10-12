class RemoveImagenFromPersonajes < ActiveRecord::Migration[6.1]
  def change
    remove_column :personajes, :imagen, :string
  end
end
