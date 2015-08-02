class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :state
      t.string :township
      t.string :status
      t.text :description
      t.float :lat
      t.float :lon
      t.json :demographic

      t.timestamps null: false
    end
  end
end
