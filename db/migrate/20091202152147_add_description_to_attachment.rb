class AddDescriptionToAttachment < ActiveRecord::Migration
  def self.up
    add_column :attachables, :description, :text
  end

  def self.down
    remove_column :attachables, :description
  end
end
