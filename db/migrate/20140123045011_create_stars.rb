class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.references :user, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
