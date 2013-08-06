class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :building_id
      t.string :unit_number
      t.string :size

      t.timestamps
    end
  end
end
