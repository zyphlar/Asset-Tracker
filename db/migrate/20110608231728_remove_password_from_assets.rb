class RemovePasswordFromAssets < ActiveRecord::Migration
  def self.up
    remove_column :assets, :password
  end

  def self.down
    add_column :assets, :password, :string
  end
end
