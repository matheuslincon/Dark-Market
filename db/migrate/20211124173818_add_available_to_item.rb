class AddAvailableToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :available, :boolean, default: true
  end
end
