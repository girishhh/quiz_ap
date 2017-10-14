class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments,id: false do |t|
      t.string :name,primary_key: true    
    end
  end
end
