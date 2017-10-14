class AddWiresToPeople < ActiveRecord::Migration
  def change
    add_column :people, :wires, :string,array: true
  end
end
