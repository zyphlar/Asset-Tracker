class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :tag
      t.string :name
      t.string :serial
      t.string :category
      t.string :make
      t.date :warranty
      t.string :password
      t.string :location
      t.string :assigned
      t.string :status
      t.datetime :verified

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
