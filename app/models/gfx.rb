class Gfx < ActiveRecord::Base
  has_many :orders, through: :lineitems
  has_many :lineitems
  belongs_to :gfxvendor
  mount_uploader :image, ImageUploader
  attr_accessible :coreclock, :gfxvendor_id, :memory, :memoryclock, :name, :image, :price
  validates :coreclock, :gfxvendor_id, :memory, :memoryclock, :name, :image, :price, :presence => true
  validates :coreclock, :memory, :memoryclock, :price, :numericality => true

  def type
    self.class.to_s.downcase
  end
end
