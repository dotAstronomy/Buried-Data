require 'test_helper'

class SharePolicyTest < ActiveSupport::TestCase
  context "A Share Policy" do
    should_have_many :datasets
  end
end
