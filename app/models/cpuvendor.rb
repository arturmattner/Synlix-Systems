class Cpuvendor < ActiveRecord::Base
  has_many :cpu
  attr_accessible :name
end
