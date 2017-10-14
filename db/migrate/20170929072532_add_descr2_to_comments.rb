class AddDescr2ToComments < ActiveRecord::Migration
  def change
    add_column :comments, :descr2, :string
  end
end
