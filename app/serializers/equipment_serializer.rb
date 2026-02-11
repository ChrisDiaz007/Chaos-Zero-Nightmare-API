class EquipmentSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :category, :rarity, :rating, :attack, :defense,
  :health

  attribute :image do |equipment|
    equipment&.image.url
  end
end
