class Ram < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  attr_accessible :clocks, :name, :speed, :vendor
end
