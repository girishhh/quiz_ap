class AddTestToComments < ActiveRecord::Migration
  def change
    add_column :comments, :test, :string
  end
end
