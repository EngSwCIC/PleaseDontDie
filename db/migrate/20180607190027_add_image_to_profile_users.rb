class AddImageToProfileUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :profile_users, :image, :string
  end
end
