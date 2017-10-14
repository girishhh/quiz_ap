class AddNum2ToComments < ActiveRecord::Migration
  def change
    add_column :comments, :num2, :datetime
  end
end
