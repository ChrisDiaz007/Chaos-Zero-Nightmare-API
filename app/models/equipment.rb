class Equipment < ApplicationRecord
  # has_many :save_decks, dependent: :nullify

  has_many :save_decks_as_weapon, class_name: "SaveDeck", foreign_key: "weapon_id", dependent: :nullify
  has_many :save_decks_as_armor, class_name: "SaveDeck", foreign_key: "armor_id", dependent: :nullify
  has_many :save_decks_as_accessory, class_name: "SaveDeck", foreign_key: "accessory_id", dependent: :nullify

  validates :name, presence: true

  # validates :image, presence: true
  has_one_attached :image, dependent: :purge_later
end
