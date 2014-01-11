class Destination < ActiveRecord::Base
  
  has_many :trips
  has_many :users, through: :trips

  mount_uploader :album, ImageUploader
  
  def snippet
    description.truncate 100
  end
end
