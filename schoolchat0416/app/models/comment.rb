class Comment < ActiveRecord::Base
  belongs_to :schools
  belongs_to :users
end