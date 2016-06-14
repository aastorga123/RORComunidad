class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.string :nombreubicacion
      t.string :direccion_ubicacion
      t.integer :tipo
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
