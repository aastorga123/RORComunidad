class ChangeTypeDescripcionperfil < ActiveRecord::Migration
  def up
    change_table :perfils do |t|
      t.change :descripcionperfil, :text
    end
  end

  def down
    change_table :perfils do |t|
      t.change :descripcionperfil, :string
    end
  end
end
