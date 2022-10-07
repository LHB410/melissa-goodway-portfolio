class AddCategoryToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :category, :string
  end
end
