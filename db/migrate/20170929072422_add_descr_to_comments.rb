class AddDescrToComments < ActiveRecord::Migration
  def change
    add_column :comments, :descr, :string
  end
end
