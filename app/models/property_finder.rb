class PropertyFinder

  def initialize(hash)
    @city = hash[:city]
  end

  #TODO: Finish all of querying :)
  def to_property
    @property = Property.where(:city => @city).first
  end

end
