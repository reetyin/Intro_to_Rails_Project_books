class Book < ApplicationRecord
  belongs_to :category
  belongs_to :author
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { minimum: 1, maximum: 200 }
  validates :isbn, presence: true, uniqueness: true, format: { with: /\A\d{3}-?\d{1,5}-?\d{1,7}-?\d{1,6}-?\d\z/, message: "must be a valid ISBN format" }
  validates :description, presence: true, length: { maximum: 2000 }
  validates :publication_date, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :pages, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :by_category, ->(category) { where(category: category) }
  scope :by_author, ->(author) { where(author: author) }
  scope :published_after, ->(date) { where("publication_date > ?", date) }
  scope :price_range, ->(min, max) { where(price: min..max) }
end
