class AddPlatformToSoftwares < ActiveRecord::Migration
  def self.up
    add_column :softwares, :platform, :string
  end

  def self.down
    remove_column :softwares, :platform
  end
end
