class RemoveGroupFromProfileUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :profile_users, :group, foreign_key: true
  end
end
