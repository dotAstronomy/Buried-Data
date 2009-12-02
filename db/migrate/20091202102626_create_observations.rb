class CreateObservations < ActiveRecord::Migration
  def self.up
    create_table :observations do |t|
      t.string :ra
      t.string :dec
      t.integer :dataset_id
      t.timestamps
    end
  end

  def self.down
    drop_table :observations
  end
end
