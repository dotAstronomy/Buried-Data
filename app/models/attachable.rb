class Attachable < ActiveRecord::Base
  belongs_to :dataset
  
  has_attached_file :file
                      
  # validates_attachment_presence :file
  validates_presence_of :name
                    
end
