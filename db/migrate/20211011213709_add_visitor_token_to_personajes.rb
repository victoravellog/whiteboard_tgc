class AddVisitorTokenToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :visitor_token, :string
  end
end
