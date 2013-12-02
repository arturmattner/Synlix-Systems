class Cpu < ActiveRecord::Base
  has_many :orders, :through => :lineitems
  has_many :lineitems
  belongs_to :cpuvendor
  mount_uploader :image, ImageUploader
  attr_accessible :clock, :cores, :cpuvendor_id, :image, :name, :price
  validates :clock, :cores, :cpuvendor_id, :image, :name, :price, :presence => true
  validates :clock, :cores, :price, :numericality => true

  def type
    self.class.to_s.downcase
  end
end
