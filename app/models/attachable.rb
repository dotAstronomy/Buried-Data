class Attachable < ActiveRecord::Base
  belongs_to :dataset
  
  has_attached_file :file,
                    :storage => :s3,
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :bucket => "buried-data",
                    :path => "attachables/:filename"
                    
  validates_presence_of :name
                    
end