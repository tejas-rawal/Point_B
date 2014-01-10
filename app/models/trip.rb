class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :destination

  has_many :posts
end
