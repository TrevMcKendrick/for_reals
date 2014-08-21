require 'test_helper'
require 'pp'

class PropertyTest < ActiveSupport::TestCase
  test "county_should_be_assigned" do
    properties(:cedar_pine_court).assign_county
    assert("Salt Lake County" == properties(:cedar_pine_court).county.name, "County wasn't assigned to property")
  end
end
