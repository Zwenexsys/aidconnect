class AddCodeToAidRequests < ActiveRecord::Migration
  def change
    add_column :aid_requests, :code, :string
  end
end
