class SaveDeck < ApplicationRecord
  belongs_to :character
  belongs_to :partner, optional: true
  belongs_to :user
  belongs_to :equipment, optional: true

  has_many :save_deck_cards, dependent: :destroy
  has_many :cards, through: :save_deck_cards

  validates :name, presence: true

end
