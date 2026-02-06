class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :character_attribute, null: false
      t.string :character_class, null: false
      t.string :role, null: false
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
