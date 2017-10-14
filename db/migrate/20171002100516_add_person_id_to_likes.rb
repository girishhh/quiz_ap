class AddPersonIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :person_id, :integer
  end
end
