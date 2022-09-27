class RemovePhotoFromArts < ActiveRecord::Migration[6.1]
  def change
    remove_column :arts, :photo, :string
  end
end
