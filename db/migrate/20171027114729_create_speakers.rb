class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers,id: false do |t|
      t.string :name
      t.primary_key :guid
    end
  end
end
