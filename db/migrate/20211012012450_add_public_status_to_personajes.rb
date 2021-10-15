class AddPublicStatusToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :public_status, :integer, default: 1
  end
end
