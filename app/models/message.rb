class Message < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1, maximum: 150 }, uniqueness: true
  belongs_to :user
  scope :custom_display, -> { order(:created_at).last(20) }

end
