class CardSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :cost, :rarity, :card_type, :faction,
  :combatant, :talent, :can_epiphany, :character_id

  attribute :image do |card|
    card&.image.url
  end
end
