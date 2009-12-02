class Dataset < ActiveRecord::Base
  has_many :observations
  belongs_to :user
  belongs_to :share_policy
  
  validates_presence_of :share_policy_id, :user_id, :name
  
end
