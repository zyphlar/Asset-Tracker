class RemoveVerifiedFromAssets < ActiveRecord::Migration
  def self.up
    remove_column :assets, :verified
  end

  def self.down
    add_column :assets, :verified, :datetime
  end
end
