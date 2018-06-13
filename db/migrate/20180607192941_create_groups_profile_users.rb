class CreateGroupsProfileUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_profile_users do |t|
      t.references :group, foreign_key: true
      t.references :profile_user, foreign_key: true

      t.timestamps
    end
  end
end
