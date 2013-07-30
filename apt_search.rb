require 'pry'
require 'nokogiri'
require 'open-uri'

neighborhood_links = {
  :downtown => "http://www.nybits.com/apartments/downtown_manhattan_apartment_buildings.html",
  :midtown => "http://www.nybits.com/apartments/midtown_manhattan_apartment_buildings.html",
  :uptown => "http://www.nybits.com/apartments/uptown_manhattan_apartment_buildings.html"
}

apartment_links = []

doc = Nokogiri::HTML(open(neighborhood_links[:downtown]));

doc.css('.shadedli').each do |item|
  apartment_links.push(item.css('a').attr('href').text)
end

doc.css('.standardli').each do |item|
  apartment_links.push(item.css('a').attr('href').text)
end

class Building
  attr_accessor :url

  NEIGHBORHOODS = {
    :downtown => "http://www.nybits.com/apartments/downtown_manhattan_apartment_buildings.html",
    :midtown => "http://www.nybits.com/apartments/midtown_manhattan_apartment_buildings.html",
    :uptown => "http://www.nybits.com/apartments/uptown_manhattan_apartment_buildings.html"
  }

  @@building_list = []

  def initialize(url)
    @url = url
  end

  def self.area_building_list(neighborhood)
    Nokogiri::HTML(open(NEIGHBORHOODS[neighborhood.to_sym]))
  end

  def self.neighborhood_list(neighborhood)
    doc = Building.area_building_list(neighborhood)
    building_list = doc.css('.standardli') + doc.css('.shadedli')
    building_list.collect do |item|
      @@building_list.push(Building.new(item.css('a').attr('href').text))
    end
  end

  def open_link
    doc = Nokogiri::HTML(open(url))
  end

end

binding.pry