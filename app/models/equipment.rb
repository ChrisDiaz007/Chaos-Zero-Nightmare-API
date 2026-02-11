class Equipment < ApplicationRecord
  has_many :save_decks, dependent: :nullify
end
