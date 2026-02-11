class SaveDeck < ApplicationRecord
  belongs_to :character
  belongs_to :partner, optional: true
  belongs_to :user
  belongs_to :weapon, class_name: "Equipment", optional: true
  belongs_to :armor, class_name: "Equipment", optional: true
  belongs_to :accessory, class_name: "Equipment", optional: true

  has_many :save_deck_cards, dependent: :destroy
  has_many :cards, through: :save_deck_cards

  validates :name, presence: true

  private

  def equipment_categories_match
    errors.add(:weapon, 'must be a weapon') if weapon && weapon.category != 'weapon'
    errors.add(:armor, 'must be an armor') if armor && armor.category != 'armor'
    errors.add(:accessory, 'must be an accessory') if accessory && accessory.category != 'accessory'
  end
end
