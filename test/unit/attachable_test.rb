require 'test_helper'

class AttachableTest < ActiveSupport::TestCase
  context "An Attachable" do
    should_belong_to :dataset
    should_validate_presence_of :name
    should_have_attached_file :file
  end  
end
