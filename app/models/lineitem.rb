class Lineitem < ActiveRecord::Base
  has_one :cpu
  has_one :ram
  belongs_to :order
  belongs_to :cpu
  belongs_to :ram
  attr_accessible :cpu_id, :order_id, :price, :quantity, :ram_id
  validates :cpu_id, :order_id, :price, :quantity, :ram_id, :presence => true
  validates :price, :quantity, :numericality => true
end
