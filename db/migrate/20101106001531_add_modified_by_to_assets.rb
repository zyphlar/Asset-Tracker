class AddModifiedByToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :modified_by, :string
  end

  def self.down
    remove_column :assets, :modified_by
  end
end
