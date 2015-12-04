class User < ActiveRecord::Base
  authenticates_with_sorcery!


  validates :name, presence true, uniqueness: {case_sensitive: false}, format: {with: /A[a-z][a-z0-9]+z/}

  validates :screen_name, length: {maximum: 140}

  validates :bio, length: {maximum: 200}

  validates :email, presence: true, uniqueness: {case_sensitive: false}

  validates :password, confirmation: true, length: {in: 6..26}

  validates :password_confirmation, presence: true, if: :password
end
