class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :nro_cuenta
      t.string :nombre_banco
      t.references :tipo_cuenta, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
