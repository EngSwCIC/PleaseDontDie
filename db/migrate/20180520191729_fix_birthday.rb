class FixBirthday < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :bithdary, :birthday
  end
end
