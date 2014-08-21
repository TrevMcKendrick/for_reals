class Address < ActiveRecord::Base
  belongs_to :property

  def complete
    self.complex.to_s + " " + self.number.to_s + " " + self.number_direction.to_s + " " + self.street_direction.to_s + " " + self.street_name.to_s + " " + self.street_type.to_s + " " + self.unit.to_s + " " + self.city + " " + self.state.to_s + " " + self.zipcode.to_s
  end

  def parsed
    Indirizzo::Address.new(self.complete)
  end
end
