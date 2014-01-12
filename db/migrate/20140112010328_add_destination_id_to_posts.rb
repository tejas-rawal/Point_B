class AddDestinationIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :destination, index: true
  end
end
