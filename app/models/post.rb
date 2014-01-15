class Post < ActiveRecord::Base
  belongs_to :destination
  has_many :comments

  mount_uploader :images, ImageUploader

  validates :activity, :description, 
    presence: true

  def as_json(options={})
    {
      id: self.id,
      destination_id: self.destination_id,
      activity: self.activity,
      description: self.description,
      external_links: self.external_links,
      images: self.images
    }
  end
end
