class PartnerSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :character_class, :overview, :passive, :ego
end
