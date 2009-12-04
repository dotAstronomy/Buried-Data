class Observation < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :dataset
  
  validates_presence_of :ra
  validates_presence_of :dec
  
end
