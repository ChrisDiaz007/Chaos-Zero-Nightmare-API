class CreateSaveDeckCards < ActiveRecord::Migration[7.1]
  def change
    create_table :save_deck_cards do |t|
      t.references :save_deck, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
