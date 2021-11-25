class Item < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
