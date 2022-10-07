class AddOrderToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :order, :integer
  end
end
