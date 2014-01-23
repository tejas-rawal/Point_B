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

  #one convenient method to pass jq_upload the necessary information
  # def to_jq_upload
  #   {
  #     "name" => read_attribute(:images),
  #     "size" => images.size,
  #     "url" => images.url,
  #     "thumbnail_url" => images.thumb.url,
  #     "delete_url" => picture_path(:id => id),
  #     "delete_type" => "DELETE" 
  #   }
  # end
end
