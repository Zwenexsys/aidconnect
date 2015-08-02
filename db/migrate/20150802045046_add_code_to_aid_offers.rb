class AddCodeToAidOffers < ActiveRecord::Migration
  def change
    add_column :aid_offers, :code, :string
  end
end
