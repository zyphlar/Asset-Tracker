class Software < ActiveRecord::Base
  validates_presence_of :version, :platform
  belongs_to :asset
end
