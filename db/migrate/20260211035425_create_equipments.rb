class CreateEquipments < ActiveRecord::Migration[7.1]
  def change
    create_table :equipments do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.integer :rarity, null: false
      t.string :rating, null: false
      t.string :zero_system, null: false
      t.integer :attack, default: 0, null: false
      t.integer :defense, default: 0, null: false
      t.integer :health, default: 0, null: false

      t.timestamps
    end
  end
end
