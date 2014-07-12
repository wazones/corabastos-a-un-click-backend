class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :type_warehouse
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
    add_index :warehouses, :name, unique: true
  end
end
