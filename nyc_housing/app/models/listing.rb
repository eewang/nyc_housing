class Listing < ActiveRecord::Base
  attr_accessible :apartment_id, :availability, :broker_fee, :posted, :price, :removal

  belongs_to :apartment
  has_many :pictures
  
end
