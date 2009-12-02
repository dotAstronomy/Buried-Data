class Observation < ActiveRecord::Base
  has_one :instrument
  belongs_to :dataset
end
