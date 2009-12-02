class CreateInstrumentObservations < ActiveRecord::Migration
  def self.up
    create_table :instrument_observations do |t|
      t.integer :instrument_id
      t.integer :observation_id
      t.timestamps
    end
  end

  def self.down
    drop_table :instrument_observations
  end
end
