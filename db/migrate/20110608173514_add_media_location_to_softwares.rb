class AddMediaLocationToSoftwares < ActiveRecord::Migration
  def self.up
    add_column :softwares, :media_location, :string
  end

  def self.down
    remove_column :softwares, :media_location
  end
end
