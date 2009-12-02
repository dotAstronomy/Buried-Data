class CreateSharePolicies < ActiveRecord::Migration
  def self.up
    create_table :share_policies do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :share_policies
  end
end
