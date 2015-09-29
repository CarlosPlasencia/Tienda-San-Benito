class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.float :total
      t.datetime :fecha
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
