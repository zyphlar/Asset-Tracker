class RemoveNameFromAssets < ActiveRecord::Migration
  def self.up
    remove_column :assets, :name
  end

  def self.down
    add_column :assets, :name, :string
  end
end
