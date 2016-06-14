class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :razon_social
      t.string :direccion_cliente
      t.string :email_cliente
      t.string :telefono_clinte
      t.string :representante_legal
      t.string :logo
      t.references :usuario, index: true, foreign_key: true
      t.references :banco, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
