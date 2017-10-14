class AddNumToComments < ActiveRecord::Migration
  def change
    add_column :comments, :num, :integer
  end
end
