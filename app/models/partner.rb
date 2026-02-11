class Partner < ApplicationRecord
  has_many :character_partners, dependent: :destroy
  has_many :characters, through: :character_partners
  has_many :save_decks, dependent: :destroy

  validates :name, presence: true
  validates :job, presence: true, inclusion: {
    in: %w[Striker Vanguard Ranger Hunter Psionic Controller]
  }

  validates :rarity, numericality: {
                                    only_integer: true,
                                    greater_than: 0,
                                    less_than_or_equal_to: 5
                                  }

end
