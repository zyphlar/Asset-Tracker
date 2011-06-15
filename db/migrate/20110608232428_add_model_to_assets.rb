class AddModelToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :model, :string
  end

  def self.down
    remove_column :assets, :model
  end
end
