require 'test_helper'

class InstrumentTest < ActiveSupport::TestCase
  context "An Instrument" do
    should_belong_to :facility
    should_have_many :observations
    
  end 
end
