class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|
      t.string :title
      t.text :content
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
