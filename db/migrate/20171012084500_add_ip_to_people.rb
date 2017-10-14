class AddIpToPeople < ActiveRecord::Migration
  def change
    add_column :people, :ip, :inet
  end
end
