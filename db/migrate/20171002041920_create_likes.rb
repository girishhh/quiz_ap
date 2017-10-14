class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :name
      t.belongs_to :post
    end
  end
end
