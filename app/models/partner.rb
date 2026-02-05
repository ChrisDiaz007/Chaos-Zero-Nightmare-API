class Partner < ApplicationRecord
  has_many :character_partners
  has_many :characters, through: :character_partners

  validates :name, presence: true
  validates :character_class, presence: true, inclusion: {
    in: %w[Striker Vanguard Ranger Hunter Psionic Controller]
  }

  validates :rating, numericality: {
                                    only_integer: true,
                                    greater_than: 0,
                                    less_than_or_equal_to: 5
                                  }

end
