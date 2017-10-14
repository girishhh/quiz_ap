class CreateTempTable < ActiveRecord::Migration
  def change
    create_table :temp_tables do |t|
      t.string :tt
    end
  end
end
