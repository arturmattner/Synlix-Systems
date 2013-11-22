class Ramvendor < ActiveRecord::Base
  has_many :rams
  attr_accessible :name
  validates :name, :presence => true
end
