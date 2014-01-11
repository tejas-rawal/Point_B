class Post < ActiveRecord::Base
  mount_uploader :images, ImageUploader

  belongs_to :user
  belongs_to :trip
end
