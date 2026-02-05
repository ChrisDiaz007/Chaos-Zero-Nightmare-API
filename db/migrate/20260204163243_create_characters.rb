class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :character_attribute, null: false
      t.string :character_class, null: false
      t.string :role, null: false
      t.integer :rating, null: false

      # Simple text lists
      t.string :overview, array: true, default: []
      t.string :strengths, array: true, default: []
      t.string :weaknesses, array: true, default: []

      t.timestamps
    end
  end
end
