class CreateDuties < ActiveRecord::Migration[5.2]
  def change
    create_table :duties do |t|
      t.string :name
      t.text :description
      t.integer :importance
      t.integer :frequency
      t.references :pet, foreign_key: true
      t.references :need, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
