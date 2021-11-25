class Item < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :categories, :description ],
    associated_against: {
      user: [ :nickname ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
