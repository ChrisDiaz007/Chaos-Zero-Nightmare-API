class EquipmentSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :category, :rating, :rarity, :attack, :defense,
  :health

  attribute :image do |equipment|
    equipment&.image.url
  end
end
