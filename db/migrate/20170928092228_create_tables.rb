class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
