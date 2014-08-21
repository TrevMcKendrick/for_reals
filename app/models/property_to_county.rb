class PropertyToCounty
  attr_accessor :parsed_address, :number, :street, :city, :state, :usps_json, :property

  def initialize(hash)
    @property = hash[:property]
    @parsed_address = self.property.address.parsed
    self.number = remove_whitespace(self.parsed_address.number)
    self.street = remove_whitespace(self.parsed_address.street.first)
    self.city = remove_whitespace(self.parsed_address.city.first)
    self.state = remove_whitespace(self.parsed_address.state)
  end

  def remove_whitespace(string)
    string.strip!
    string.gsub(/\s+/,"+")
  end

  def request
    "http://geocoding.geo.census.gov/geocoder/geographies/address?street=#{self.number}+#{self.street}&city=#{self.city}&state=#{self.state}&benchmark=Public_AR_Current&vintage=ACS2013_Current&layers=84&format=json"
  end

  def send_request(request)
    uri = URI.parse(request)
    response = Net::HTTP.get_response(uri)
    self.usps_json = JSON.parse(response.body)
  end

  def parse_usps_json
    return self.usps_json["result"]["addressMatches"].first["geographies"]["Counties"].first["NAME"]
  end

  def county
    send_request(request)
    parse_usps_json
  end

end
