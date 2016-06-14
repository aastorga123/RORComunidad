class ChangeTypeTelefono < ActiveRecord::Migration
   def self.up
     rename_column :clientes, :telefono_clinte, :telefono_cliente
   end

   def self.down

   end
end
