# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
	b = Building.new({
		:address => "#{i} Main Street, New York NY",
		:building_structure => "walk-up",
		:leasing_company => "Flatiron School",
		:description => "Apartment building",
		:pets_allowed => false,
		:phone_number => "555-555-5555",
		:year_built => 2013
		})
	puts "Building #{i} created!"
	b.save!
	3.times do |j|
		a = Apartment.new({
			:bedrooms => j,
			:bathrooms => 1,
			:building_id => b.id,
			:unit_number => j,
			:size => "800"
			})
		a.save!
		puts "Apartment #{i}-#{j} created!"
	end
end