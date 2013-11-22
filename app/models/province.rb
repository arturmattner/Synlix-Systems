class Province < ActiveRecord::Base
  has_many :customers
  attr_accessible :gst, :hst, :name, :pst
  validates :name, :presence => true
  validates :gst, :hst, :pst, :numericality => true
end
