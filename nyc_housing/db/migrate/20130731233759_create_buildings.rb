class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :building_structure
      t.string :leasing_company
      t.string :description
      t.boolean :pets_allowed
      t.string :phone_number
      t.integer :year_built

      t.timestamps
    end
  end
end
