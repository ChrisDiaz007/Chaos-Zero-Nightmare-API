class SaveDeckSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description
  # :character_id, :partner_id, :user_id, :weapon_id, :armor_id, :accessory_id

  attribute :character do |save_deck|
    character = save_deck.character
    {
      id: character.id,
      name: character.name,
      character_attribute: character.character_attribute,
      job: character.job,
      rarity: character.rarity,
      half: character.half.url
    }
  end

  attribute :partner do |save_deck|
    partner = save_deck.partner
    {
      id: partner.id,
      name: partner.name,
      job: partner.job,
      rarity: partner.rarity,
      passive_name: partner.passive_name,
      passive_description: partner.passive_description,
      ego_name: partner.ego_name,
      ego_description: partner.ego_description,
      image: partner.image.url
    }
  end

  attribute :weapon do |save_deck|
    weapon = save_deck.weapon
    next nil unless weapon
    {
      id: weapon.id,
      name: weapon.name,
      category: weapon.category,
      rarity: weapon.rarity,
      rating: weapon.rating,
      attack: weapon.attack,
      image: weapon.image.url
    }
  end

  attribute :armor do |save_deck|
    armor = save_deck.armor
    next nil unless armor
    {
      id: armor.id,
      name: armor.name,
      category: armor.category,
      rarity: armor.rarity,
      rating: armor.rating,
      defense: armor.defense,
      image: armor.image.url
    }
  end

  attribute :accessory do |save_deck|
    accessory = save_deck.accessory
    next nil unless accessory
    {
      id: accessory.id,
      name: accessory.name,
      category: accessory.category,
      rarity: accessory.rarity,
      rating: accessory.rating,
      health: accessory.health,
      image: accessory.image.url
    }
  end


  # attribute :character do |save_deck|
  #   save_deck.character.attributes.except('created_at', 'updated_at')
  # end

  # attribute :partner do |save_deck|
  #   save_deck.partner.attributes.except('created_at', 'updated_at')
  # end

  # attribute :weapon do |save_deck|
  #   save_deck.weapon.attributes.except('created_at', 'updated_at')
  # end

  # attribute :armor do |save_deck|
  #   save_deck.armor.attributes.except('created_at', 'updated_at')
  # end

  # attribute :accessory do |save_deck|
  #   save_deck.accessory.attributes.except('created_at', 'updated_at')
  # end


  attribute :cards do |save_deck|
    save_deck.cards.map do |card|
      {
        id: card.id,
        name: card.name,
        description: card.description,
        cost: card.cost,
        rarity: card.rarity,
        origin: card.origin,
        card_type: card.card_type,
        faction: card.faction,
        combatant: card.combatant,
        talent: card.talent,
        can_epiphany: card.can_epiphany,
        character_id: card.character_id,
      }
    end
  end
end
