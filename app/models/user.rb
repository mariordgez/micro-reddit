# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: true, length: { minimum: 4 }
  validates :email, presence: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 4 }
end
