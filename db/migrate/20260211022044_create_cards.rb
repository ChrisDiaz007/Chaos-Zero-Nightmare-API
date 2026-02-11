class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :cost, null: false
      t.string :rarity, null: false
      t.string :card_type, null: false
      t.string :faction, null: false
      t.boolean :combatant, null: false
      t.string :talent, null: false
      t.boolean :can_epiphany, null: false
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
