class ChangeActivityToThing < ActiveRecord::Migration
  def change
    rename_column :posts, :activity, :thing
  end
end
