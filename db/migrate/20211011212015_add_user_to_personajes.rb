class AddUserToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_reference :personajes, :user, foreign_key: true
  end
end
