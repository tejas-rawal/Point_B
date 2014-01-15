class Destination < ActiveRecord::Base

  mount_uploader :album, ImageUploader

  belongs_to :user
  has_many :posts

  def snippet
    description.truncate 100
  end
end
