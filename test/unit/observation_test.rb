require 'test_helper'

class ObservationTest < ActiveSupport::TestCase
  context "An Observation" do
    should_belong_to :instrument, :dataset
    should_validate_presence_of :ra, :dec
    
  end
end
