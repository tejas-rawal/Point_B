class Comment < ActiveRecord::Base

  include PublicActivity::Common

  belongs_to :post
  belongs_to :user
  # has_one :destination, through: :post

  validates :post_id, presence: true
  validates :user_id, presence: true

end
