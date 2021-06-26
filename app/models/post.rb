class Post < ApplicationRecord

  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :address_way, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
