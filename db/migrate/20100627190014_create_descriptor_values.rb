class CreateDescriptorValues < ActiveRecord::Migration
  def self.up
    create_table :descriptor_values do |t|
      t.string :value
      t.integer :descriptor_id
      t.integer :descriptable_id
      t.string :descriptable_type
      t.timestamps
    end
    
    add_index :descriptor_values, :descriptor_id
    add_index :descriptor_values, :descriptable_type
    add_index :descriptor_values, :descriptable_id
  end

  def self.down
    drop_table :descriptor_values
  end
end
