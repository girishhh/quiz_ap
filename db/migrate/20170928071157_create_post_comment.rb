class CreatePostComment < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.string :posts
      t.string :comments
    end
  end
end
