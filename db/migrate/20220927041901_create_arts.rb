class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :description
      t.string :photo
      t.string :title

      t.timestamps
    end
  end
end
