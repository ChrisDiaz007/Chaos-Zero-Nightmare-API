class Character < ApplicationRecord
  validates :name, presence: true
  validates :character_attribute, presence: true
  validates :character_class, presence: true
  validates :role, presence: true

  validates :rating, numericality: {
                                    only_integer: true,
                                    greater_then_or_equal_to: 1,
                                    less_than_or_equal_to: 5
                                  }


end
