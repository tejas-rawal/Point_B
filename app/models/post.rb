class Post < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :destination
  has_many :comments

  mount_uploader :images, ImageUploader
  has_attached_file :images

  validates :thing, :description,
    presence: true

  include Rails.application.routes.url_helpers

  def as_json(options={})
    {
      id: self.id,
      destination_id: self.destination_id,
      thing: self.thing,
      description: self.description,
      external_links: self.external_links,
      images: self.images
    }
  end

  def to_jq_upload
    {
     "name" => read_attribute(:images),
     "size" => read_attribute(:images.size),
     "url" => images.url(:original),
     "thumbnail_url" => images.thumb.url,
    }
  end
end
