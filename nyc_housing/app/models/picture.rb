class Picture < ActiveRecord::Base
  attr_accessible :listing_id

  belongs_to :listing

end
