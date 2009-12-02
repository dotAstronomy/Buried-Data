class Observation < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :dataset
end
