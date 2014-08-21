# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if Rails.env == "development" || "test"
  Property.destroy_all
  County.destroy_all
  Address.destroy_all
end

COUNTY_SITE_LOOKUP = {
"Beaver County" => "Not available online",
"Box Elder County" => "http://erecord.boxeldercounty.org/eaglesoftware/taxweb/search.jsp",
"Cache County" => "",
"Carbon County" => "",
"Daggett County" => "",
"Davis County" => "",
"Duchesne County" => "",
"Emery County" => "",
"Garfield County" => "",
"Grand County" => "",
"Iron County" => "",
"Juab County" => "",
"Kane County" => "",
"Millard County" => "",
"Morgan County" => "",
"Piute County" => "",
"Rich County" => "",
"Salt Lake County" => "http://assessor.slco.org/",
"San Juan County" => "",
"Sanpete County" => "",
"Sevier County" => "",
"Summit County" => "",
"Tooele County" => "",
"Uintah County" => "",
"Utah County" => "",
"Wasatch County" => "",
"Washington County" => "",
"Wayne County" => "",
"Weber County" => ""
}

COUNTY_SITE_LOOKUP.each do |county, site|
  County.create(:name => county, :site_address => site)
end

salt_lake_county = County.where(:name => "Salt Lake County").first

salt_lake_address = Address.create(
:number => "856",
:street_direction => "E",
:street_name => "Cedar Pine Court",
:street_type => "Ave",
:unit => "20",
:city => "Salt Lake City",
:state => "UT",
:zipcode => "84106"
 )

salt_lake_county.properties.create(
:address => salt_lake_address)
