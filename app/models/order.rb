class Order < ActiveRecord::Base
  belongs_to :customer
  has_one :cpu, through: :lineitems
  has_one :ram, through: :lineitems
  has_many :lineitems
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
end
