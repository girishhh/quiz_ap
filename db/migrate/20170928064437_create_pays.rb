class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays,id: false do |t|
      t.primary_key :from
    end
  end
end
