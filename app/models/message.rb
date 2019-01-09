class Message < ApplicationRecord
  validates :body, presence: true, length: { minimum: 5, maximum: 150 }, uniqueness: true
  belongs_to :user
end
