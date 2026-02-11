class CreateSaveDecks < ActiveRecord::Migration[7.1]
  def change
    create_table :save_decks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :character, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :weapon, foreign_key: { to_table: :equipments }
      t.references :armor, foreign_key: { to_table: :equipments }
      t.references :accessory, foreign_key: { to_table: :equipments }

      t.timestamps
    end
  end
end
