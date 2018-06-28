class AddImageToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :image, :string
  end
end
