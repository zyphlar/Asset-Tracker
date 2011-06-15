class AddCompanyVersionToSoftwares < ActiveRecord::Migration
  def self.up
    add_column :softwares, :company, :string
    add_column :softwares, :version, :string
  end

  def self.down
    remove_column :softwares, :version
    remove_column :softwares, :company
  end
end
