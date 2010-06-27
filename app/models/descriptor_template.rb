class DescriptorTemplate < ActiveRecord::Base
  belongs_to :template
  belongs_to :descriptor
end
