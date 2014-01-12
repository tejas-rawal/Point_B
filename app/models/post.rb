class Post < ActiveRecord::Base
  belongs_to :destination

  mount_uploader :images, ImageUploader

  def as_json(options={})
    {
      id: self.id,
      destination_id: self.destination_id,
      event: self.event,
      description: self.description,
      external_links: self.external_links,
      images: self.images
    }
  end
end
