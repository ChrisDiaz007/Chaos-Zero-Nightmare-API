class CreateCharacterPartners < ActiveRecord::Migration[7.1]
  def change
    create_table :character_partners do |t|
      t.string :tier, null: false
      t.references :character, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end

    add_index :character_partners, [:character_id, :partner_id], unique: true

  end
end
