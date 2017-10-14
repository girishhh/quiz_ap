class AddCountryAndStateToPeople < ActiveRecord::Migration
  def change
    add_column :people, :country, :json
    add_column :people, :state, :jsonb,index: true
  end
end
