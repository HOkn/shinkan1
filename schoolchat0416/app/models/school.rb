class School < ActiveRecord::Base
  has_many :school_users
  has_many :users, through: :school_users
  has_many :comments
end
