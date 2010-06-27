class CreateDescriptorTemplates < ActiveRecord::Migration
  def self.up
    create_table :descriptor_templates do |t|
      t.integer :template_id
      t.integer :descriptor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :descriptor_templates
  end
end
