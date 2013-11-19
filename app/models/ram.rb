class Ram < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  mount_uploader :image, ImageUploader
  attr_accessible :clocks, :name, :speed, :capacity, :vendor, :price, :image
end
