class AddTest1AndTest2ToPeople < ActiveRecord::Migration
  def change
    add_column :people, :test1, :json
    add_column :people, :test2, :jsonb
  end
end
