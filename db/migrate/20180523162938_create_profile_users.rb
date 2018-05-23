class CreateProfileUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.text :address
      t.string :phone
      t.references :user, index:true, foreign_key: true
      t.timestamps
    end
  end
end
