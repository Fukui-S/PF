class RemovePostImageUrlFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_image_url, :integer
  end
end
