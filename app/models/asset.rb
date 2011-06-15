class Asset < ActiveRecord::Base
  validates_presence_of :tag, :category
  has_many :comments
  has_many :softwares

  def tag_with_name
    "#{tag} - #{name}"
  end
end
