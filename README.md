nyc_housing
===========

App to make the housing search process suck less.

*TODO
- Establish schema
	- Building
		- address
		- building_structure
		- leasing_company
		- description
		- various amenities (using FlagShihTzu)
		- pets_allowed
		- phone_number
		- year_built
	- Apartment
		- bedrooms
		- bathrooms
		- building_id
		- unit_number
		- size
		- various amenities (using FlagShihTzu)
	- Listing
		- price
		- broker_fee
		- apartment_id
		- removal_date
		- posted_date
		- availability_date
	- Pictures
		- listing_id
	- Building has many apartments
	- Apartment has many listings
	- Listings have many pictures

- Develop list of questions that we want to answer
	- Where do I want to rent an apartment?
	- When should I rent an apartment?
	- How do prices change with changes in attributes, location, listing date, etc.?

- Choose technology stack
	- Database (mysql? postgres?)
	- Javascript (backbone? angular?)
	- CSS (LESS? SASS?)
	- Other (iOS)

- Choose Gems
	- FlagShihTzu
	- Geocoder

