class CreatePerson < ActiveRecord::Migration
  def change
    create_table :people,id: false do |t|
      t.string :name
      t.primary_key :guid      
    end
  end
end
