class CreateUsuarioRols < ActiveRecord::Migration
  def change
    create_table :usuario_rols do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :rol, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
