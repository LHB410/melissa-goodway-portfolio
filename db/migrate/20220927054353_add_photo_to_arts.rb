class AddPhotoToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :photo, :string
  end
end
