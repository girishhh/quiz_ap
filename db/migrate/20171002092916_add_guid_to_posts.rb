class AddGuidToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :guid, :integer
  end
end
