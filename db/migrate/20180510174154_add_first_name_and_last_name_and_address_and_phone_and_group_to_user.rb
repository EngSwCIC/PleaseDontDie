class AddFirstNameAndLastNameAndAddressAndPhoneAndGroupToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :address, :text
    add_column :users, :phone, :string
    add_reference :users, :group, foreign_key: true
  end
end
