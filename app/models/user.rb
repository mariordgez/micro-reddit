class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :title, presence: true, length: { minimum: 4 }
  validates :body, presence: true, length: { minimum: 10 }
 


end

