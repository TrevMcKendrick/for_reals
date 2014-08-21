class PropertiesController < ApplicationController

  def index
    @property = PropertyFinder.new(property_params).to_property
  end

  private

  def property_params
    params.require(:property).permit(:street_address_one, :street_address_two, :complex_number, :city, :state, :zipcode)
  end

end
