class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :user
      t.string :pass
      t.string :phone
      t.string :name
      t.binary :profilePicture
      t.decimal :rating

      t.timestamps
    end
  end
end
