class CreateStrengths < ActiveRecord::Migration[7.1]
  def change
    create_table :strengths do |t|
      t.references :character, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
