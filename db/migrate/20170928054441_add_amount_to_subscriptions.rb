class AddAmountToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :amounnt, :decimal, precision: 5, scale: 2
  end
end
