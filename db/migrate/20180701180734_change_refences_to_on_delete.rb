class ChangeRefencesToOnDelete < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :duties, :needs
    add_foreign_key :duties, :needs, on_delete: :nullify

    remove_foreign_key :duties, :pets
    add_foreign_key :duties, :pets, on_delete: :cascade

    remove_foreign_key :groups_profile_users, :groups
    add_foreign_key :groups_profile_users, :groups, on_delete: :cascade

    remove_foreign_key :groups_profile_users, :profile_users
    add_foreign_key :groups_profile_users, :profile_users, on_delete: :cascade

    remove_foreign_key :profile_users, :users
    add_foreign_key :profile_users, :users, on_delete: :cascade
  end
end
