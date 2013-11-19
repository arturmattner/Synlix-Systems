class Customer < ActiveRecord::Base
  belongs_to :province
  has_many :orders
  attr_accessible :address, :city, :country, :email, :first_name, :last_name, :postal_code, :province_id
  validates :address, :city, :country, :email, :first_name, :last_name, :postal_code, :province_id, presence: true
  validates :email, uniqueness: true
end
