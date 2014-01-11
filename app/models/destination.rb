class Destination < ActiveRecord::Base
  
  mount_uploader :album, ImageUploader

  has_many :trips
  has_many :users, through: :trips

  def snippet
    description.truncate 100
  end
end
