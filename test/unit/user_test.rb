require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "A User" do
    should have_many :datasets
  end  
end
