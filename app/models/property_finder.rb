class PropertyFinder

  def initialize(hash)
    @city = hash[:city]
  end

  def to_property
    @property = Property.where(:city => @city).first
  end

end
