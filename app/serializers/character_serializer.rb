class CharacterSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :character_attribute, :character_class, :role, :rating,
             :overview, :strengths, :weaknesses
end
