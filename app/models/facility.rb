class Facility < ActiveRecord::Base
  has_many :instruments
  validates_presence_of :name
  
end
