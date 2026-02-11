class CreateEquipments < ActiveRecord::Migration[7.1]
  def change
    create_table :equipments do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.boolean :rarity, null: false
      t.integer :attack, default: 0, null: false
      t.integer :defense, default: 0, null: false
      t.integer :health, default: 0, null: false

      t.timestamps
    end

    add_index :equipments, :name, unique: true

  end
end
