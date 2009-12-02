class User < ActiveRecord::Base
  has_many :datasets
end
