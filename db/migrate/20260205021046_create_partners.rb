class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name, null: false
      t.string :character_class, null: false
      t.integer :rating, null: false

      # Simple text lists
      t.string :overview, array: true, default: []
      t.string :passive, array: true, default: []
      t.string :ego, array: true, default: []

      t.timestamps
    end
  end
end
