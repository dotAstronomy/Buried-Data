class Dataset < ActiveRecord::Base
  has_many :observations
  belongs_to :user
end
