class AddNemoToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :nemo, :string
  end
end
