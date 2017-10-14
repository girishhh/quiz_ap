class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles,id: false do |t|
      t.string :mob,primary_key: true
    end
  end
end
