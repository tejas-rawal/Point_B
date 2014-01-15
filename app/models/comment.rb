class Comment < ActiveRecord::Base

  belongs_to :posts
  validates :post_id, presence: true
  validates :user_id, presence: true

end
