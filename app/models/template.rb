class Template < ActiveRecord::Base
  has_many :descriptor_templates
  has_many :descriptors, :through => :descriptor_templates
end
