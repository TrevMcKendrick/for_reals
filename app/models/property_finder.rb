class PropertyFinder

  def initialize(hash)
    @street_address_one = hash[:street_address_one]
    @street_address_two = hash[:street_address_two]
    @complex_number = hash[:complex_number]
    @city = hash[:city]
    @state = hash[:state]
    @zipcode = hash[:zipcode]
  end

  #TODO: Finish all of querying :)
  def to_property
    @property = Property.where(:city => @city).first
    # :street_address_one => @street_address_one,
    # :street_address_two => @street_address_two,
    # :complex_number => @complex_number,
    # :state => @state,
    # :zipcode => @zipcode).first
  end

end
