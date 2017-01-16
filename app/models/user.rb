class User < ApplicationRecord
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 30, minimum: 6}
  validates :password, presence: true, length:{minimum: 6, maximum: 30  }

  has_many :posts
  has_many :comments
end
