class AddCategoriesToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :categories, :string
  end
end
