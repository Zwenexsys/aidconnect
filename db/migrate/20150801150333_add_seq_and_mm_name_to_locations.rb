class AddSeqAndMmNameToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :mm_state, :string
    add_column :locations, :mm_township, :string
    add_column :locations, :seq, :integer
  end
end
