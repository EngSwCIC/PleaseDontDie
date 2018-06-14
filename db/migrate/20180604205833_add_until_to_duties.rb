class AddUntilToDuties < ActiveRecord::Migration[5.2]
  def change
    add_column :duties, :until, :datetime
  end
end
