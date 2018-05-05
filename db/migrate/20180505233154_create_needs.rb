class CreateNeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :needs do |t|
      t.string :name
      t.text :description
      t.integer :importance
      t.integer :frequency
      t.references :specie

      t.timestamps
    end
  end
end
