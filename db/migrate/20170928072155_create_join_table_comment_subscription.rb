class CreateJoinTableCommentSubscription < ActiveRecord::Migration
  def change
    create_join_table :comments, :subscriptions do |t|
      # t.index [:comment_id, :subscription_id]
      # t.index [:subscription_id, :comment_id]
    end
  end
end
