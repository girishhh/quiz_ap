class AddSysIdToPersons < ActiveRecord::Migration
  def change
    add_column :people, :sys_id, :integer
  end
end
