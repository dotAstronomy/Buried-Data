class Instrument < ActiveRecord::Base
  belongs_to :facility
  has_many :observations
end
