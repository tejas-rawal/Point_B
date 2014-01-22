class Post < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :destination
  has_many :comments

  mount_uploader :images, ImageUploader

  validates :thing, :description, 
    presence: true

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
end
