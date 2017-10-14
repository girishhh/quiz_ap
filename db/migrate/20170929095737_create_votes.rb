class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :name
      t.integer :post_id
    end
  end
end
