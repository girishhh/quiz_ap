class AddSysIdToMobiles < ActiveRecord::Migration
  def change
    add_column :mobiles, :sys_id, :integer
  end
end
