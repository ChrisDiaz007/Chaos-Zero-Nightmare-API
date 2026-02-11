class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name, null: false
      t.string :job, null: false
      t.integer :rating, null: false
      t.string :title, null: false
      t.text :backstory, null: false
      t.string :race, null: false
      t.string :birthday, null: false
      t.string :specialty, null: false
      t.string :cv, null: false
      t.string :passive_name, null: false
      t.string :passive_description, array: true, default: []
      t.string :ego_name, null: false
      t.string :ego_description, null: false

      t.timestamps
    end

    add_index :partners, :name, unique: true

  end
end
