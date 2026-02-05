class CreateCharacterPartners < ActiveRecord::Migration[7.1]
  def change
    create_table :character_partners do |t|
      t.references :character, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
