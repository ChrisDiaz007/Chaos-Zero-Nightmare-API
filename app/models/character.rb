class Character < ApplicationRecord
  has_many :signature_cards, class_name: "Card", foreign_key: 'character_id'
  has_many :character_partners, dependent: :destroy
  has_many :partners, through: :character_partners
  has_many :save_decks, dependent: :destroy

  validates :name, presence: true
  validates :character_attribute, presence: true, inclusion: {
    in: %w[Passion Void Instinct Order Justice]
  }
  validates :job, presence: true, inclusion: {
    in: %w[Striker Vanguard Ranger Hunter Psionic Controller]
  }
  validates :role, presence: true

  validates :rating, numericality: {
                                    only_integer: true,
                                    greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 5
                                  }

  # validates :cover, :crop, :portrait, :half, presence: true
  has_one_attached :cover, dependent: :purge_later #cover photo, purge_later send a request to cloudinary to remove images
  has_one_attached :crop, dependent: :purge_later #cropped photo
  has_one_attached :half, dependent: :purge_later #half photo
  has_one_attached :portrait, dependent: :purge_later #portrait photo

  def available_cards
    Card.where(character_id: [id, nil])
  end

  def can_use_card?(card)
    card.character_id.nil? || card.character_id == id
  end

end
