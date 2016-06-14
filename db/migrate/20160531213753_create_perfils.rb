class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :nombreperfil
      t.string :descripcionperfil

      t.timestamps null: false
    end
  end
end
