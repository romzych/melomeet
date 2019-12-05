class Group < ApplicationRecord
  has_many :join_groups
  has_many :users, :through => :join_groups
  belongs_to :admin, foreign_key: "admin_id", class_name: "User"
end
