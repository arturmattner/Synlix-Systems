class Cpu < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  attr_accessible :clock, :cores, :name, :vendor
end
