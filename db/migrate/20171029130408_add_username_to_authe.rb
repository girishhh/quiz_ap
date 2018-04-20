class AddUsernameToAuthe < ActiveRecord::Migration
  def change
    add_column :authes, :username, :string
  end
end
