require 'test_helper'

class SharePolicyTest < ActiveSupport::TestCase
  context "A Share Policy" do
    should have_many :datasets
  end
end
