class Instrument < ActiveRecord::Base
  belongs_to :facility
  has_many :observations
  
  validates_presence_of :facility_id
  validates_uniqueness_of :name, :scope => :facility
  
end
