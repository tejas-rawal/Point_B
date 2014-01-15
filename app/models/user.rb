class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :profile_pic, ImageUploader

  has_many :destinations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def getLatLng
    self.each do |destination|
    response = Unirest.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{destination.city}&sensor=false")
    lat = response.body['results'][0]['geometry']['location']['lat']
    lng = response.body['results'][0]['geometry']['location']['lng']
    end
  end
end
