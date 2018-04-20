class AddNumToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :num, :integer
    execute <<-SQL
     SELECT * FROM SPEAKERS
    SQL
  end
end
