class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :phone
      t.text :description
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
