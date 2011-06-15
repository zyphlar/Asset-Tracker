class CreateSoftwares < ActiveRecord::Migration
  def self.up
    create_table :softwares do |t|
      t.string :name
      t.string :key
      t.integer :asset_id
      t.date :installed
      t.string :installed_by
      t.string :modified_by
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :softwares
  end
end
