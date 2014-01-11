class Destination < ActiveRecord::Base
  
  has_many :trips
  has_many :users, through: :trips
  
  def snippet
    description.truncate 100
  end
end
