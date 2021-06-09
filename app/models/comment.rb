# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :title, presence: true, length: { minimum: 4 }
  validates :body, presence: true, length: { minimum: 10 }
end
