class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :price
      t.integer :broker_fee
      t.string :apartment_id
      t.date :removal
      t.date :posted
      t.date :availability

      t.timestamps
    end
  end
end
