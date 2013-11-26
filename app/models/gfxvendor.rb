class Gfxvendor < ActiveRecord::Base
  has_many :gfxes
  attr_accessible :name
  validates :name, :presence => true
end
