class CreatePostsrd < ActiveRecord::Migration
  def change
    create_table :postsrds do |t|
      t.string :name
    end
  end
end
