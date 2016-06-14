class CreateUsuarioUnidads < ActiveRecord::Migration
  def change
    create_table :usuario_unidads do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :unidad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
