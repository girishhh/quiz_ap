class CreateJoinTablePostsPostsrds < ActiveRecord::Migration
  def change
    create_join_table :posts, :postsrds do |t|
      # t.index [:post_id, :postsrd_id]
      # t.index [:postsrd_id, :post_id]
    end
  end
end
