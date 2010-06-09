class RemoveOldTables < ActiveRecord::Migration
  def self.up
    drop_table :facilities
    drop_table :observations
    drop_table :instruments
  end

  def self.down
  end
end
