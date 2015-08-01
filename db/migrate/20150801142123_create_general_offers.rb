class CreateGeneralOffers < ActiveRecord::Migration
  def change
    create_table :general_offers do |t|
      t.string :name
      t.string :phone
      t.string :nric
      t.text :content

      t.timestamps null: false
    end
  end
end
