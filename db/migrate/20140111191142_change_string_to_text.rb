class ChangeStringToText < ActiveRecord::Migration
  def change
    change_column :destinations, :album, :text
  end
end
