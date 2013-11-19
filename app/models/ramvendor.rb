class Ramvendor < ActiveRecord::Base
  has_many :rams
  attr_accessible :name
end
