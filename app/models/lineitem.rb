class Lineitem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cpu
  belongs_to :ram
  belongs_to :gfx
  attr_accessible :cpu_id, :order_id, :price, :quantity, :ram_id, :gfx_id
  #validates :cpu_id, :order_id, :price, :ram_id, :gfx_id, :presence => true
  #validates :price, :quantity, :numericality => true
end
