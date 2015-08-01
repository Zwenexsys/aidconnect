class CreateAidRequests < ActiveRecord::Migration
  def change
    create_table :aid_requests do |t|
      t.string :name
      t.string :phone
      t.string :nric
      t.text :content
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
