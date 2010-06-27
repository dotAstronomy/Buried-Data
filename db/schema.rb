# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100627190855) do

  create_table "attachables", :force => true do |t|
    t.integer  "dataset_id"
    t.string   "name"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "datasets", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "share_policy_id"
    t.boolean  "available"
  end

  create_table "descriptor_values", :force => true do |t|
    t.string   "value"
    t.integer  "descriptor_id"
    t.integer  "descriptable_id"
    t.string   "descriptable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descriptor_values", ["descriptable_id"], :name => "index_descriptor_values_on_descriptable_id"
  add_index "descriptor_values", ["descriptable_type"], :name => "index_descriptor_values_on_descriptable_type"
  add_index "descriptor_values", ["descriptor_id"], :name => "index_descriptor_values_on_descriptor_id"

  create_table "descriptors", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "kind"
    t.boolean  "required"
    t.string   "default_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_policies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_descriptors", :force => true do |t|
    t.integer  "template_id"
    t.integer  "descriptor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
