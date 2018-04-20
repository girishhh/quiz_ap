class AddAddressesToPeople < ActiveRecord::Migration
  def change
    add_column :people, :addresses,:text ,array: true
  end
end
