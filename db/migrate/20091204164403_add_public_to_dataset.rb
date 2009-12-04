class AddPublicToDataset < ActiveRecord::Migration
  def self.up
    add_column :datasets, :public, :boolean
  end

  def self.down
    remove_column :datasets, :public
  end
end
