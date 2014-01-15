class Destination < ActiveRecord::Base

  mount_uploader :album, ImageUploader

  belongs_to :users
  has_many :posts

  def snippet
    description.truncate 100
  end

  def get_country_code
    I18nData.country_code("#{self.country}").downcase
  end

  def get_lat_lng
    code = self.get_country_code
    response = Unirest.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{self.city}&sensor=false&region=#{code}")
    @lat = response.body['results'][0]['geometry']['location']['lat']
    @lng = response.body['results'][0]['geometry']['location']['lng']
    return @lat, @lng
  end
end
