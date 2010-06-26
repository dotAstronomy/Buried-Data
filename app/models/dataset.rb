class Dataset < ActiveRecord::Base
  belongs_to :user
  belongs_to :share_policy
  has_many :attachables
  accepts_nested_attributes_for :attachables, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
  scope :recent, lambda { |*args| {:conditions => ["created_at > ?", (args.first || 3.days.ago)]} }
  validates_presence_of :share_policy_id, :user_id, :title
  
  
  
end
