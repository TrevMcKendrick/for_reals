class Property < ActiveRecord::Base
  belongs_to :county
  has_one :address

  def assign_county
    ptc = PropertyToCounty.new(:property => self)
    self.county = County.where(:name => ptc.county).first
  end

end
