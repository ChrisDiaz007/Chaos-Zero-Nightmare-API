class SaveDeckCard < ApplicationRecord
  belongs_to :save_deck
  belongs_to :card
end
