class Review < ApplicationRecord
  belongs_to :book

  validates :rating, presence: true, inclusion: { in: 1..5, message: "must be between 1 and 5" }
  validates :content, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :reviewer_name, presence: true, length: { minimum: 2, maximum: 100 }

  scope :high_rated, -> { where("rating >= ?", 4) }
  scope :recent, -> { order(created_at: :desc) }
end
