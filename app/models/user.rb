class User < ActiveRecord::Base
  acts_as_authentic
  validates_uniqueness_of :email, :case_sensitive => :false, :on => :save, :message => "has already been taken"
  validates_uniqueness_of :username, :case_sensitive => :false, :on => :save, :message => "has already been taken"
  has_many :datasets
  
end
