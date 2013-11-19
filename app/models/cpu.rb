class Cpu < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  mount_uploader :image, ImageUploader
  attr_accessible :clock, :cores, :name, :vendor, :price, :image
end
