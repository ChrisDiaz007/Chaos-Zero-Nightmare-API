class Character < ApplicationRecord
  has_many :character_partners
  has_many :partners, through: :character_partners

  validates :name, presence: true
  validates :character_attribute, presence: true, inclusion: {
    in: %w[Passion Void Instinct Order Justice]
  }
  validates :character_class, presence: true, inclusion: {
    in: %w[Striker Vanguard Ranger Hunter Psionic Controller]
  }
  validates :role, presence: true

  validates :rating, numericality: {
                                    only_integer: true,
                                    greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 5
                                  }

  has_one_attached :cover, dependent: :purge_later #cover photo, purge_later send a request to cloudinary to remove images
  has_one_attached :crop, dependent: :purge_later #cropped photo
  has_one_attached :half, dependent: :purge_later #half photo
  has_one_attached :portrait, dependent: :purge_later #portrait photo
end
