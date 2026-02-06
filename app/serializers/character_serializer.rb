class CharacterSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :character_attribute, :character_class, :role, :rating

  attribute :cover do |character|
    character&.cover.url
  end

  attribute :crop do |character|
    character&.crop.url
  end

  attribute :half do |character|
    character&.half.url
  end

  attribute :portrait do |character|
    character&.portrait.url
  end

  attribute :overviews do |character|
    character&.overviews.pluck(:content)
  end

  attribute :strengths do |character|
    character&.strengths.pluck(:content)
  end

  attribute :weaknesses do |character|
    character&.weaknesses.pluck(:content)
  end

end
