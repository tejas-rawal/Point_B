class RemoveEventFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :event, :string
  end
end
