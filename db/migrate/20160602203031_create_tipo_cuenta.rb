class CreateTipoCuenta < ActiveRecord::Migration
  def change
    create_table :tipo_cuenta do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
