class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :number
      t.string :nombre
      t.integer :warehouse_id
      t.integer :merchant_id

      t.timestamps
    end
  end
end
