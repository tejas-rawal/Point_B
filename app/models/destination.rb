class Destination < ActiveRecord::Base

  mount_uploader :album, ImageUploader

  belongs_to :user
  has_many :posts

  def snippet
    description.truncate 200
  end

  def country_code
    I18nData.country_code("#{country}").downcase
  end

  def lat_lng
    code = country_code
    city.gsub(/\s/, "+")
    response = Unirest.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{city}&sensor=false&region=#{code}")
    @lat = response.body['results'][0]['geometry']['location']['lat']
    @lng = response.body['results'][0]['geometry']['location']['lng']
    {lat: @lat, lng: @lng}
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
