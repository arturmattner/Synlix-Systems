class Order < ActiveRecord::Base
  belongs_to :customer
  has_one :cpu, through: :lineitem
  has_one :ram, through: :lineitem
  has_many :lineitems
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
  validates :customer_id, :status, :presence => true
  validates :gst_rate, :hst_rate, :pst_rate, :numericality => true
end
