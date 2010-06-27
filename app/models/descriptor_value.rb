class DescriptorValue < ActiveRecord::Base
  belongs_to :descriptor
  belongs_to :descriptable, :polymorphic => true

end
