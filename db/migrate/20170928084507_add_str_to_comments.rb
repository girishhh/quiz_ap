class AddStrToComments < ActiveRecord::Migration
  def change
    add_column :comments, :str, :string,limit: 2
  end
end
