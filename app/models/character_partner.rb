class CharacterPartner < ApplicationRecord
  belongs_to :character
  belongs_to :partner

  validates :character_id, uniqueness: { scope: :partner_id }

end
