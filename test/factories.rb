require 'factory_girl'

Factory.sequence :name do |n|
  "blahhh#{n}" 
end

Factory.define :public_dataset, :class => Dataset do |d|
  d.name          "Dataset 1"
  d.public        true
  d.user          { |user| user.association(:standard_user)}
  d.share_policy  { |policy| policy.association(:share_policy)}
end

Factory.define :hidden_dataset, :class => Dataset do |d|
  d.name          "Dataset 1"
  d.public        false
  d.user          { |user| user.association(:standard_user)}
  d.share_policy  { |policy| policy.association(:share_policy)}
end

Factory.define :standard_user, :class => User do |u|
  u.username              { Factory.next(:name) }
  u.password              "monkey"
  u.password_confirmation "monkey"
  u.email                 { "#{Factory.next(:name)}@gmail.com" }
end

Factory.define :share_policy do |d|
  d.name        "Share policy 1"
  d.description "Awesomely unrestrictive"
end
