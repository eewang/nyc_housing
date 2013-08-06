class Apartment < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :building_id, :size, :unit_number

  belongs_to :building
  has_many :listings

end
