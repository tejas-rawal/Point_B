class Destination < ActiveRecord::Base
  
  mount_uploader :album, ImageUploader

  belongs_to :users
  
  def snippet
    description.truncate 100
  end
end
