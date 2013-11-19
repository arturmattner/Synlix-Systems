class Ram < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  belongs_to :ramvendor
  mount_uploader :image, ImageUploader
  attr_accessible :clocks, :image, :name, :price, :ramvendor_id, :speed, :capacity
end
