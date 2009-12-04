class AddInstrumentIdToObservation < ActiveRecord::Migration
  def self.up
    add_column :observations, :instrument_id, :integer
  end

  def self.down
    remove_column :observations, :instrument_id
  end
end
