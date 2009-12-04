require 'test_helper'

class FacilityTest < ActiveSupport::TestCase
  context "A facility" do
    should_have_many :instruments
    should_validate_presence_of :name
    
  end
end
