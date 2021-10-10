class CreateRazaPersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :raza_personajes do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
