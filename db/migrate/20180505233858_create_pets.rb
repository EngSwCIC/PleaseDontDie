class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :specie
      t.text :bio
      t.date :bithdary
      t.string :sex
      t.references :group

      t.timestamps
    end
  end
end
