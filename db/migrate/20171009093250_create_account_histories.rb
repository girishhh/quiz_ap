class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.string :name
      t.belongs_to :account
    end
  end
end
