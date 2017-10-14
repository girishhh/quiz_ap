class AddTestNumToTempTables < ActiveRecord::Migration
  def change
    add_column :temp_tables, :testnum, :string
  end
end
