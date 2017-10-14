class AddAddressToPeople < ActiveRecord::Migration
  def change
    add_column :people, :address, :hstore
  end
end
