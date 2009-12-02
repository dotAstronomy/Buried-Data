class AddToDataset < ActiveRecord::Migration
  def self.up
    add_column :datasets, :description, :text
    add_column :datasets, :share_policy_id, :integer
  end

  def self.down
    remove_column :datasets, :share_policy_id
    remove_column :datasets, :description
  end
end
