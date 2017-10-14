class CreateSails < ActiveRecord::Migration
  def change
    create_table :sails do |t|
    	t.timestamps
    end
  end
end
