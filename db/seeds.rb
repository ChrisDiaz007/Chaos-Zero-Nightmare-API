# db/seeds.rb

# Clear existing data
puts "Clearing existing data..."
SaveDeckCard.destroy_all
SaveDeck.destroy_all
Card.destroy_all
CharacterPartner.destroy_all
Equipment.destroy_all
Partner.destroy_all
Character.destroy_all
User.destroy_all

puts "Creating user..."
user = User.create!(
  name: "admin",
  email: "admin@gmail.com",
  password: "password",
  admin: true
)

puts "Created #{User.count} user"

# ==========================================
# Create Character: Rin
# ==========================================
puts "Creating character: Rin..."

rin = Character.create!(
  name: "Rin",
  job: "Striker",
  rarity: "5",
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

puts "Created character: #{rin.name}"

# ==========================================
# Create Card: Dark Mist Sword
# ==========================================
puts "Creating card: Dark Mist Sword..."

card = Card.create!(
  name: "Dark Mist Sword",
  description: "100% Damage",
  cost: "1",
  rarity: "common",
  card_type: "attack",
  origin: "basic",
  faction: "other",
  combatant: true,
  can_epiphany: false,
  character: rin
)

puts "Created card: #{card.name}"

# ==========================================
# Create Partner: Scarlet
# ==========================================
puts "Creating partner: Scarlet..."

scarlet = Partner.create!(
  name: "Scarlet",
  job: "Striker",
  rarity: "5",
  title: "Witch of Shackles",
  backstory: "A special security agent of Kaguya Pharmaceutical of Peltion, responsible for punishing various industrial spies. She's obsessed with binding her targets with knots and forcing them to obey, earning her the notorious nickname \"Witch of Shackles.\"",
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
# Create Equipment: Crimson Sword
# ==========================================
puts "Creating equipment: Crimson Sword..."

crimson_sword = Equipment.create!(
  name: "Crimson Sword",
  category: "weapon",
  rarity: "5",
  rating: "legendary",
  zero_system: "City of Mist",
  attack: 50,
  defense: 0,
  health: 0
)

puts "Created equipment: #{crimson_sword.name}"

# ==========================================
# Summary
# ==========================================
puts "\n" + "="*50
puts "SEED DATA SUMMARY"
puts "="*50
puts "Users: #{User.count}"
puts "Characters: #{Character.count} - #{rin.name}"
puts "Partners: #{Partner.count} - #{scarlet.name}"
puts "Cards: #{Card.count} - #{card.name}"
puts "Equipment: #{Equipment.count} - #{crimson_sword.name}"
puts "="*50
puts "Seeding completed successfully!"
puts "="*50
