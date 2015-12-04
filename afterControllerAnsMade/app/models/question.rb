class Question < ActiveRecord::Base
  has_many :answers
  validates :title, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { minimum: 5 }
end
