class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.float :pre_venta
      t.float :pre_comra
      t.string :tamaño
      t.string :marca
      t.integer :stock
      t.integer :stock_min

      t.timestamps null: false
    end
  end
end
