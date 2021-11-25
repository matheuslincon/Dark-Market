class Item < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :name, :categories ],
    using: {
      tsearch: { prefix: true }
    }
end
