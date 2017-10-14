class CreateCoupans < ActiveRecord::Migration
  def change
    create_table :coupans,:primary_key=>:name,id: false do |t|
      t.string :name
      t.integer :amount
    end
  end
end
