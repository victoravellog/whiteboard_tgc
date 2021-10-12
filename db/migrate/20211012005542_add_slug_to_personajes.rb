class AddSlugToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :slug, :string, after: :id
  end
end
