class Building < ActiveRecord::Base
  attr_accessible :address, :building_structure, :description, :leasing_company, :pets_allowed, :phone_number, :year_built

  has_many :apartments

end
