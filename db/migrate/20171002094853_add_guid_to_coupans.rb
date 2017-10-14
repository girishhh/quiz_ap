class AddGuidToCoupans < ActiveRecord::Migration
  def change
    add_column :coupans, :guid, :integer
  end
end
