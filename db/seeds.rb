if Rails.env == "development" || "test"
  Property.destroy_all
  County.destroy_all
  Address.destroy_all
end

County::ACCESSOR_SITE.each do |county, site|
  County.create(:name => county, :site_address => site)
end

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

salt_lake_county = County.where(:name => "Salt Lake County").first

salt_lake_county.properties.create(
:address => salt_lake_address)
