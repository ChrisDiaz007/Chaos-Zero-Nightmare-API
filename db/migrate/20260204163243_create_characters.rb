class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :job, null: false
      t.string :character_attribute, null: false
      t.string :role, null: false
      t.integer :rating, null: false
      t.string :overviews, array: true, default: []
      t.string :strengths, array: true, default: []
      t.string :weaknesses, array: true, default: []

      t.timestamps
    end

    add_index :characters, :name, unique: true

  end
end
