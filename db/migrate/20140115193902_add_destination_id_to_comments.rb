class AddDestinationIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :destination, index: true
  end
end
