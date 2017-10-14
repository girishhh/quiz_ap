class CreateJoinTableCoupanSubscription < ActiveRecord::Migration
  def change
    create_join_table :coupans, :subscriptions do |t|
      # t.index [:coupan_id, :subscription_id]
      # t.index [:subscription_id, :coupan_id]
    end
  end
end
