class ChangePriceToBeFloatInItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :price, :float
  end
end
