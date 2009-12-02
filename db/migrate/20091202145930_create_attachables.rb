class CreateAttachables< ActiveRecord::Migration
  def self.up
    create_table :attachables do |t|
      t.integer :dataset_id
      t.string :name
      t.string :file_file_name
      t.string :file_content_type
      t.integer :file_file_size
      t.datetime :file_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :attachables
  end
end
