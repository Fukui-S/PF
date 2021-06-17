class AddPostImageUrlToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :post_image_url, :integer
  end
end
