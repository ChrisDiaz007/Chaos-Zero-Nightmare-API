# db/seeds.rb

puts "Clearing existing data..."
Card.destroy_all
CharacterPartner.destroy_all
Equipment.destroy_all
Partner.destroy_all
Character.destroy_all

puts "Created #{User.count} user(s)"

# ==========================================
# Create Character: Rin
# ==========================================
puts "Creating character: Rin..."

rin = Character.create!(
  name: "Rin",
  job: "Striker",
  rating: 5,
  role: "MainDPS",
  character_attribute: "Void",
  overviews: [
    "A fierce striker with unmatched offensive capabilities"
  ],
  strengths: [
    "Exceptional damage output",
    "Fast attack speed"
  ],
  weaknesses: [
    "Low defensive capabilities",
    "Vulnerable to crowd control"
  ]
)

# puts "Created character: #{rin.name}"

# ==========================================
# Create Card: Dark Mist Sword
# ==========================================
# puts "Creating card: Dark Mist Sword..."

  # card = Card.create!(
  #   name: "Dark Mist Sword",
  #   description: "100% Damage",
  #   cost: "1",
  #   rarity: "common",
  #   card_type: "attack",
  #   origin: "basic",
  #   faction: "other",
  #   talent: ["none"],
  #   combatant: true,
  #   can_epiphany: false,
  #   character: Character.first
  # )

# --- Image 1 ---

# Row 1, Card 1
card_dm_sword_1 = Card.create!(
  name: "Dark Mist Sword",
  description: "100% Damage",
  cost: "1",
  rarity: "common",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

# Row 1, Card 2
card_dm_sword_stance = Card.create!(
  name: "Dark Mist Sword",
  description: "100% Damage. Gain Dark Mist Stance.",
  cost: "1",
  rarity: "common",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

# Row 1, Card 3
card_dm_sword_heavy = Card.create!(
  name: "Dark Mist Sword",
  description: "220% Damage",
  cost: "2",
  rarity: "common",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

# Row 1, Card 4
card_dm_sword_heavy_stance = Card.create!(
  name: "Dark Mist Sword",
  description: "220% Damage. Gain Dark Mist Stance.",
  cost: "2",
  rarity: "common",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

# Row 1, Card 5
card_protection = Card.create!(
  name: "Protection",
  description: "100% Shield",
  cost: "1",
  rarity: "common",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

# Row 2, Card 1
card_drawing_slash_120 = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 120% Damage. Gain Dark Mist Stance. Dark Mist Stance: Increase Damage Amount by 50%",
  cost: "0",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 2
card_drawing_slash_180 = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 180% Damage. Gain Dark Mist Stance. Dark Mist Stance: Increase Damage Amount by 50%",
  cost: "0",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 3
card_drawing_slash_hit = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 150% Damage. Gain Dark Mist Stance. Dark Mist Stance: Add 1 Hit(s)",
  cost: "0",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 4
card_drawing_slash_350 = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 350% Damage. Dark Mist Stance: This card can be used.",
  cost: "0",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 5
card_drawing_slash_hand = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 120% Damage. Gain Dark Mist Stance. Dark Mist Stance: Increase Damage Amount by 30% for each (0) card in hand.",
  cost: "0",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# --- Image 2 ---

# Row 1, Card 1
card_drawing_slash_costly = Card.create!(
  name: "Drawing Slash",
  description: "[Haste] 360% Damage. Gain Dark Mist Stance. Dark Mist Stance: Increase Damage Amount by 50%.",
  cost: "2",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 2
card_dm_secret_draw = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "Draw 1 card(s) of this unit. Gain Dark Mist Stance.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 3
card_dm_secret_shield = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "100% Shield. Draw 2 card(s) of this unit. Gain Dark Mist Stance.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 4
card_dm_secret_reduce = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "Draw 1 card(s) of this unit, then decrease Cost of those cards by 1 for 1 turn. Gain Dark Mist Stance.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 5
card_dm_secret_atk_buff = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "Draw 1 Attack Card(s) of this unit, then increase Damage Amount of those cards by 50% for 1 turn. Gain Dark Mist Stance.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 1
card_dm_secret_move = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "Move Dark Mist Secret Art: Annihilation and Dark Mist Secret Art: Black Dance from Draw Pile or Graveyard to hand.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 2
card_dm_secret_upgrade_draw = Card.create!(
  name: "Dark Mist Secret Art: Destruction",
  description: "At the start of the turn, if in Dark Mist Stance, Draw 1 card(s) of this unit.",
  cost: "2",
  rarity: "unique",
  card_type: "upgrade",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 3
card_dm_secret_hit_150 = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 150% Damage. Dark Mist Stance: Add 1 Hit(s).",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 4
card_dm_secret_hit_225 = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 225% Damage. Dark Mist Stance: Add 1 Hit(s).",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 5
card_dm_secret_multi_hit = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 50% Damage x 2. Dark Mist Stance: Add 2 Hit(s).",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# --- Image 3 ---

# Row 1, Card 1
card_dm_secret_crit = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 100% Damage x 2. Dark Mist Stance: +100% Critical Damage.",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 2
card_dm_secret_damage_inc = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 250% Damage. Dark Mist Stance: Increase Damage Amount by 100%.",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 3
card_dm_secret_cost_red = Card.create!(
  name: "Dark Mist Secret Art: Annihilation",
  description: "[Haste] 180% Damage. Dark Mist Stance: Decrease Cost of all cards of this unit in hand by 1 for 1 turn.",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 4
card_dm_inner_retain_40 = Card.create!(
  name: "Dark Mist Inner Art",
  description: "Retain Dark Mist Stance for 1 turn. Dark Mist Stance: +40% Damage Amount to Attack Cards of this unit for 1 turn.",
  cost: "1",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 1, Card 5
card_dm_inner_retain_80 = Card.create!(
  name: "Dark Mist Inner Art",
  description: "Retain Dark Mist Stance for 1 turn. Dark Mist Stance: +80% Damage Amount to Attack Cards of this unit for 1 turn.",
  cost: "1",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 1
card_dm_inner_retain_0cost = Card.create!(
  name: "Dark Mist Inner Art",
  description: "Retain Dark Mist Stance for 1 turn. Dark Mist Stance: +40% Damage Amount to Attack Cards of this unit for 1 turn.",
  cost: "0",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 2
card_dm_inner_annihilation = Card.create!(
  name: "Dark Mist Inner Art",
  description: "Retain Dark Mist Stance for 1 turn. Create 1 Dark Mist Secret Art: Annihilation card(s) and apply Ephemeral to those cards.",
  cost: "1",
  rarity: "unique",
  card_type: "skill",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 3
card_dm_inner_upgrade_stance = Card.create!(
  name: "Dark Mist Inner Art",
  description: "At the start of the turn, gain Dark Mist Stance.",
  cost: "1",
  rarity: "unique",
  card_type: "upgrade",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 4
card_dm_inner_upgrade_dmg = Card.create!(
  name: "Dark Mist Inner Art",
  description: "If in a Dark Mist Stance state, increase Damage Amount of Attack Cards of this unit by 50%.",
  cost: "1",
  rarity: "unique",
  card_type: "upgrade",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: true,
  character: Character.first
)

# Row 2, Card 5
card_dm_secret_skill_hand = Card.create!(
  name: "Dark Mist Secret: Black Dance",
  description: "8% Damage. Dark Mist Stance: Add 1 Hit(s) for each (0) Skill Card in hand.",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

#last card
card_dm_secret_skill_hands = Card.create!(
  name: "Dark Mist Secret: Black Dance",
  description: "100% Damage. Dark Mist Stance: Add 1 Hit(s) for each (0) Skill Card in hand.",
  cost: "1",
  rarity: "unique",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  talent: ["none"],
  combatant: true,
  can_epiphany: false,
  character: Character.first
)

card_forbidden = Card.create!(
  name: "Forbidden: Ecstas",
  description: "150% x 4 Damage x 4When Drawing by an ability, decrease Cost of this card by 1",
  cost: "9",
  rarity: "legend",
  card_type: "attack",
  origin: "other",
  faction: "Forbidden",
  talent: ["Retain"],
  combatant: false,
  can_epiphany: false,
  character: nil
)

# puts "Created card: #{card.name}"

# ==========================================
# Create Partner: Scarlet
# ==========================================
puts "Creating partner: Scarlet..."

scarlet = Partner.create!(
  name: "Scarlet",
  job: "Striker",
  rating: 5,
  title: "Witch of Shackles",
  backstory: "A special security agent of Kaguya Pharmaceutical...",
  race: "human",
  birthday: "March 31st",
  specialty: "Twisted Charm",
  cv: "中: Not included / 日: Amane Makino",
  passive_name: "The Path to Mastery",
  passive_description: [
    "Increase the assigned Combatant's Attack by 16%.",
    "If the assigned Combatant's card was used just before, +30% Damage Amount to Attack Cards. Can stack up to 2 times and is removed when a different Combatant's card is used.",
    "Gain Focus each time 2 of the assigned Combatant's cards are used. Focus: Increase Damage Amount of the assigned Combatant's Attack Cards by 40%",
    "When the effect is activated, decrease Focus#5 by 1, and when another Combatant's card is used, remove Focus#5"
  ],
  ego_name: "Binding Knot",
  ego_description: "250% Damage+10% Designated Combatants's Attack Card Damage Amount for each owned buff (0) for 1 turn"
)

puts "Created partner: #{scarlet.name}"

# ==========================================
# Create Equipment
# ==========================================
puts "Creating equipment..."

crimson_weapon = Equipment.create!(
  name: "Mutant Predator Spike",
  category: "weapon",
  rating: 5,
  rarity: "Legend",
  zero_system: "Laboratory 0",
  attack: 82,
  defense: 0,
  health: 0
)
puts "Created equipment: #{crimson_weapon.name}"

crimson_armor = Equipment.create!(
  name: "Wings of Freedom",
  category: "armor",
  rating: 5,
  rarity: "Legend",
  zero_system: "Laboratory 0",
  attack: 0,
  defense: 31,
  health: 0
)
puts "Created equipment: #{crimson_armor.name}"

crimson_accessory = Equipment.create!(
  name: "Emblem of an Exceptional Entity",
  category: "accessory",
  rarity: "Legend",
  zero_system: "Laboratory 0",
  rating: 5,
  attack: 0,
  defense: 0,
  health: 83
)
puts "Created equipment: #{crimson_accessory.name}"

# ==========================================
# Summary
# ==========================================
puts "SEED DATA SUMMARY"
puts "Characters: #{Character.count} - #{rin.name}"
puts "Partners: #{Partner.count} - #{scarlet.name}"
# puts "Cards: #{Card.count} - #{card.name}"
puts "Equipment: #{Equipment.count} - #{[crimson_weapon.name, crimson_armor.name, crimson_accessory.name].join(', ')}"
puts "Seeding completed successfully!"
