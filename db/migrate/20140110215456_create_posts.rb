class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.string :event
      t.text :description
      t.string :external_links
      t.string :images

      t.timestamps
    end
  end
end
