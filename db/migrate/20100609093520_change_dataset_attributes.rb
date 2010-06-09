class ChangeDatasetAttributes < ActiveRecord::Migration
  def self.up
    rename_column :datasets, :name, :title
    rename_column :datasets, :public, :available
  end

  def self.down
    rename_column :datasets, :available, :public
    rename_column :datasets, :title, :name
  end
end
