class ChangeStringToText2 < ActiveRecord::Migration
  def change
    change_column :users, :profile_pic, :text
    change_column :posts, :images, :text
  end
end
