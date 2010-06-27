require 'test_helper'

class DatasetTest < ActiveSupport::TestCase
  context "A Dataset" do
    should have_many :attachables
    should belong_to :user
    should belong_to :share_policy
    should validate_presence_of :share_policy_id
    should validate_presence_of :title
    should validate_presence_of :user_id
    
    # context "A standard dataset" do
    #   setup do
    #     @dataset = Factory :public_dataset
    #   end
    # 
    #   should "be #public" do
    #     assert @dataset.public?
    #   end
    # end
    # 
    # context "A non-public dataset" do
    #   setup do
    #     @dataset = Factory :hidden_dataset
    #   end
    # 
    #   should "not be #public" do
    #     assert !@dataset.public?
    #   end
    # end
  end
end
