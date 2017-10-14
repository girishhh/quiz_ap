class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.belongs_to :person,index: true
    end
  end
end
