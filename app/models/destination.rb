class Destination < ActiveRecord::Base
  
  belongs_to :users
  
  def snippet
    description.truncate 100
  end
end
