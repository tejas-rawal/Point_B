class Comment < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :post
  belongs_to :user
  # has_one :destination, through: :post

  validates :post_id, presence: true
  validates :user_id, presence: true

end
