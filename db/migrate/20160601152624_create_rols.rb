class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.string :nombrerol
      t.text :descripcionrol

      t.timestamps null: false
    end
  end
end
