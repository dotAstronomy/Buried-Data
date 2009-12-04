require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "A User" do
    should_have_many :datasets
  end  
end
