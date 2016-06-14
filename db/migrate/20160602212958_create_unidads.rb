class CreateUnidads < ActiveRecord::Migration
  def change
    create_table :unidads do |t|
      t.integer :numero_unidad
      t.string :calle_interna
      t.references :ubicacion, index: true, foreign_key: true
      t.references :categoria, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
