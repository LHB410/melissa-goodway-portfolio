class AddPositionToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :position, :integer
  end
end
