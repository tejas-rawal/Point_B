class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :location
      t.string :profile_pic
      t.text :bio

      t.timestamps
    end
  end
end
