class RemoveNameFromSoftwares < ActiveRecord::Migration
  def self.up
    remove_column :softwares, :name
  end

  def self.down
    add_column :softwares, :name, :string
  end
end
