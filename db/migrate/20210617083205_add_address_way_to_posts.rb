class AddAddressWayToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :address_way, :text
  end
end
