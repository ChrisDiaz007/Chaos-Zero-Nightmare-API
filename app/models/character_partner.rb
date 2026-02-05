class CharacterPartner < ApplicationRecord
  belongs_to :character
  belongs_to :partner
end
