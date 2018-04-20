class CreateJoinTableMobilesAndBatteries < ActiveRecord::Migration
  def change
    create_join_table :mobiles, :batteries do |t|
      # t.index [:mobile_id, :battery_id]
      # t.index [:battery_id, :mobile_id]
    end
  end
end
