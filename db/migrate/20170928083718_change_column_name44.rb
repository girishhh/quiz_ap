class ChangeColumnName44 < ActiveRecord::Migration
  def change
  	change_column :comments,:num,:integer,limit: 5
  end
end
