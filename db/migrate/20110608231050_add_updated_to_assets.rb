class AddUpdatedToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :updated, :date
  end

  def self.down
    remove_column :assets, :updated
  end
end
