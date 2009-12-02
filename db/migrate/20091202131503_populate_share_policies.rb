class PopulateSharePolicies < ActiveRecord::Migration
  def self.up
    SharePolicy.reset_column_information
    ["Public", "Acknowledge", "Author"].each do |policy|
      SharePolicy.create(:name => policy)
    end
  end

  def self.down
    SharePolicy.delete_all
  end
end
