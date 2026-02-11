class Equipment < ApplicationRecord
  has_many :save_decks, dependent: :nullify

  validates :name, presence: true

  validates :image, presence: true
  has_one_attached :image, dependent: :purge_later
end
