class Card < ApplicationRecord
  belongs_to :character, optional: true
  has_many :save_decks, dependent: :destroy
  has_many :save_deck_cards, dependent: :destroy

  validates :name, presence: true
  validates :cost, presence: true

  def universal?
    character_id.nil?
  end

  def variable_cost?
    cost == "X"
  end

  def effective_cost
    return "X" if variable_cost?
    base_cost = cost.to_i
    total_modifier = epiphanies.sum(:cost_modifier) || 0
    [0, base_cost + total_modifier].max
  end
end
