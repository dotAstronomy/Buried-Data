class CreateDescriptors < ActiveRecord::Migration
  def self.up
    create_table :descriptors do |t|
      t.string :name
      t.string :value
      t.string :kind
      t.boolean :required
      t.string :default_value
      t.timestamps
    end
  end

  def self.down
    drop_table :descriptors
  end
end
