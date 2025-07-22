class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :biography, presence: true, length: { maximum: 1000 }
  validates :nationality, presence: true, length: { maximum: 50 }
  validates :birth_date, presence: true

  validate :birth_date_in_past

  private

  def birth_date_in_past
    return unless birth_date

    errors.add(:birth_date, "must be in the past") if birth_date > Date.current
  end
end
