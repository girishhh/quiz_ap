class AddGuidToMobiles < ActiveRecord::Migration
  def change
    add_column :mobiles, :guid, :string
  end
end
