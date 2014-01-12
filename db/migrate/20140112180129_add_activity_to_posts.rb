class AddActivityToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :activity, :string
  end
end
