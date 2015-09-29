class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :cantidad
      t.float :precio
      t.references :product, index: true, foreign_key: true
      t.references :sale, index: true, foreign_key: true
      t.float :sub_total
      t.float :descuento

      t.timestamps null: false
    end
  end
end
