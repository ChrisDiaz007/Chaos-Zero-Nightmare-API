class SaveDeckSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :character_id, :partner_id, :user_id, :weapon_id,
  :armor_id, :accessory_id

  has_many :cards
end
