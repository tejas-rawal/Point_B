class RemoveDestinationFromComments < ActiveRecord::Migration
  def change
    remove_reference :comments, :destination, index: true
  end
end
