require 'test_helper'

class DatasetTest < ActiveSupport::TestCase
  context "A Dataset" do
    should_have_many :attachables
    should_belong_to :user, :share_policy
    should_validate_presence_of :share_policy_id, :name, :user_id
    
    context "A standard dataset" do
      setup do
        @dataset = Factory :public_dataset
      end

      should "be #public" do
        assert @dataset.public?
      end
    end
    
    context "A non-public dataset" do
      setup do
        @dataset = Factory :hidden_dataset
      end

      should "not be #public" do
        assert !@dataset.public?
      end
    end
  end
end
