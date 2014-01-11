class Destination < ActiveRecord::Base
  
  mount_uploader :album, ImageUploader

  has_many :trips
  has_many :users, through: :trips
end
