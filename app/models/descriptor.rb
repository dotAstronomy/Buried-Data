class Descriptor < ActiveRecord::Base
  has_many :descriptor_values
  has_many :descriptor_templates
  has_many :templates, :through => :descriptor_templates
    
end
