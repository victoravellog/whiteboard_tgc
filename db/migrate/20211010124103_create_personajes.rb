class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.integer :poder
      t.integer :ataque
      t.integer :defensa
      t.integer :carisma
      t.integer :espiritu

      t.timestamps
    end
  end
end
