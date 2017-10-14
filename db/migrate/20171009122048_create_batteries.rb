class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :name
      t.string :mobile_id,index: true
    end
  end
end
